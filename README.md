#   Docker 
1.  Docker is open source centralised platform
2.  Designed to create, run, and deploy application.
3.  It uses container on host os to run application.
4.  Allow application to use same linux kernel as a system on host computer rather than creating whole virtual os.
5.  We can install docker on any os but docker engine natively runs on linux distribution.
6.  Written in "GO" language.
7.  Docker performs os level virtualization also known as containerization.
8.  Docker is set of PaaS that uses OS level virtualization.

#   Docker Installation
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

#   Add the repository to Apt sources:
    echo \
     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin