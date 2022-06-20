# jenkins-terraform-azure


Docker
------------

### Agent SSH
  ```
  # Create Keys
  mkdir .ssh
  ssh-keygen -b 2048 -t rsa -N '' -f .ssh/jenkins_agent


  # Set Public Key
  JENKINS_AGENT_SSH_PUBKEY=$(cat .ssh/jenkins_agent.pub)
  echo "JENKINS_AGENT_SSH_PUBKEY=$JENKINS_AGENT_SSH_PUBKEY" > .env
  ```

### Build
  ```
  # Set Admin Password
  JENKINS_ADMIN_PASSWORD=$(date | md5sum |cut -c1-16)
  echo $JENKINS_ADMIN_PASSWORD
  echo "JENKINS_ADMIN_PASSWORD=$JENKINS_ADMIN_PASSWORD" >> .env

  docker-compose build --no-cache
  docker-compose up -d --force-recreate

  docker-compose ps
  ```

### Config

  ##### 1. - Create Jenkins Agent Credentials
  ```
  Manage Jenkins -> Manage Credentials -> Add Credentials

  Kind: SSH Username with private key
  ID: jenkins-agent
  Username: jenkins
  Private key
    Add (Paste private key)
  ```
