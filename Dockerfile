FROM jenkins/jenkins:jdk17

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall && usermod -aG docker jenkins

RUN bash nodesource_setup.sh

RUN apt update

RUN apt-get install -y nodejs

USER jenkins

RUN node -v
