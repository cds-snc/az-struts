workflow "Build on push" {
  on = "push"
  resolves = [
    "Update container image in Azure App Service for Containers",
  ]
}

action "Lint Dockerfile" {
  uses = "docker://cdssnc/docker-lint"
}

action "Run unit tests" {
  uses = "xlui/action-maven-cli/jdk11@18bbe92f79e2aba73a7dab743c84638c85db321b"
  args = "clean test"
}

action "If master branch" {
  uses = "actions/bin/filter@24a566c2524e05ebedadef0a285f72dc9b631411"
  needs = ["Lint Dockerfile", "Run unit tests"]
  args = "branch workflow"
}

action "Login into Docker Hub" {
  uses = "actions/docker/login@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["If master branch"]
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Maven clean install" {
  uses = "xlui/action-maven-cli/jdk11@18bbe92f79e2aba73a7dab743c84638c85db321b"
  needs = ["If master branch"]
  args = "clean install"
}

action "Build a Docker container" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Maven clean install"]
  args = ["build --build-arg ARTIFACT_ID=az-struts --build-arg GITHUB_SHA_ARG=$GITHUB_SHA -t base ."]
}

action "Tag :latest" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Build a Docker container"]
  args = "tag base cdssnc/az-struts:latest"
}

action "Tag :$GITHUB_SHA" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Tag :latest"]
  args = "tag base cdssnc/az-struts:$GITHUB_SHA"
}

action "Push container to Docker Hub" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Login into Docker Hub", "Tag :$GITHUB_SHA"]
  args = "push cdssnc/az-struts"
}

action "Login to Azure" {
  uses = "Azure/github-actions/login@d0e5a0afc6b9d8d19c9ade8e2446ef3c20e260d4"
  needs = ["Push container to Docker Hub"]
  secrets = ["AZURE_SERVICE_APP_ID", "AZURE_SERVICE_PASSWORD", "AZURE_SERVICE_TENANT"]
}

action "Update container image in Azure App Service for Containers" {
  uses = "Azure/github-actions/cli@d0e5a0afc6b9d8d19c9ade8e2446ef3c20e260d4"
  needs = ["Login to Azure"]
  env = {
    AZURE_SCRIPT = "az webapp config container set --resource-group cdscracollab-innovation-rg --name az-struts --docker-custom-image-name cdssnc/az-struts:$GITHUB_SHA"
  }
}
