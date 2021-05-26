FROM jenkins/jenkins:lts-slim

# install plugins
RUN jenkins-plugin-cli --plugins blueocean docker-workflow kubernetes slack ssh-slaves
