workflow "Build on push" {
  on = "push"
  resolves = [
    "If workflow branch",
  ]
}

action "Lint Dockerfile" {
  uses = "docker://cdssnc/docker-lint"
}

action "Run unit tests" {
  uses = "xlui/action-maven-cli/jdk11@18bbe92f79e2aba73a7dab743c84638c85db321b"
  args = "clean test"
}

action "If workflow branch" {
  uses = "actions/bin/filter@24a566c2524e05ebedadef0a285f72dc9b631411"
  needs = ["Lint Dockerfile", "Run unit tests"]
  args = "branch workflow"
}

