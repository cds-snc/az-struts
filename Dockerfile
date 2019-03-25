# Start with a base image containing Java runtime
FROM jetty:9.4-alpine

# Add Maintainer Info
LABEL maintainer="paul.craig@cds-snc.ca"

ARG GITHUB_SHA_ARG
ENV GITHUB_SHA=$GITHUB_SHA_ARG

ENV STRUTS_DEV_MODE false

ARG ARTIFACT_ID

# The application's jar file
ARG WAR_FILE=target/$ARTIFACT_ID.war

# Add the application's jar to the container
COPY $WAR_FILE /var/lib/jetty/webapps/ROOT.war

# Make port 8080 available to the world outside this container
EXPOSE 8080
