FROM jenkins/ssh-agent:jdk11

USER root

# Install Terraform
RUN apt-get update && \
    apt-get -y install \
    ca-certificates \
    gnupg \
    lsb-release \
    wget \
    git

RUN wget -qO - terraform.gpg https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/terraform-archive-keyring.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/terraform-archive-keyring.gpg] https://apt.releases.hashicorp.com \
  $(lsb_release -cs) main" > /etc/apt/sources.list.d/terraform.list

RUN apt-get update && \
    apt-get -y install terraform
