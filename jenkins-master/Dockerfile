FROM jenkins/jenkins:lts-jdk11

ENV TZ='America/Sao_Paulo'

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/casc.yaml
COPY conf/casc.yaml /usr/share/jenkins/casc.yaml

# Install Plugins
COPY conf/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
