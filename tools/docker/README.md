# Installation Guide for Docker/Docker Engine

| Sl No  | Version  | Operating System |
|:-:|:-:|:-:|
| 1  | [latest(v20.10.3)](https://github.com/shravan20/software-installation-guides/blob/feature/dockerSetup/tools/docker/README.md#installation-of-docker20103-ubuntu-1804)  | Ubuntu 18.04(BionicBeaver)  |
| 2  | [latest(v20.10.3)](https://github.com/shravan20/software-installation-guides/blob/feature/dockerSetup/tools/docker/README.md#installation-of-docker20103-debian)  | Debian/Raspbian Versions |


---

<br>

- ### Installation of Docker(20.10.3) Ubuntu 18.04

1. Docker Engine is supported on x86_64 (or amd64), armhf, and arm64 architectures. So, let's first uninstall old versions, if they are installed.


```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
```

2. Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

Update the apt package index and install packages to allow apt to use a repository over HTTPS

```sh
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

3. Add Docker’s official GPG key
   
   ```sh
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
   ```

   Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88, by searching for the last 8 characters of the fingerprint.

   ```sh
    sudo apt-key fingerprint 0EBFCD88

    #pub   rsa4096 2017-02-22 [SCEA]
    #      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
    #uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
    #sub   rsa4096 2017-02-22 [S]
   ```

4. Based on your system architecture, x86_64/arm64,
   
   ```sh
   sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   ```
   
5. Installation of Docker Engine
   
```sh
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

6. To install a specific version of Docker Engine, list the available versions in the repo, then select and install:
   
   ```sh
   apt-cache madison docker-ce #list the versions

  #docker-ce | 5:18.09.1~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  #docker-ce | 5:18.09.0~3-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu  xenial/stable amd64 Packages
  ...
  ```

  Now to install a specific version using the version string from the second column, for example, 5:18.09.1~3-0~ubuntu-xenial.

  ```sh
   #sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
   sudo apt-get install docker-ce="5:18.09.0~3-0~ubuntu-xenial" docker-ce-cli="5:18.09.0~3-0~ubuntu-xenial" containerd.io
  ```

7. To test and verify that Docker Engineis installed properly, lets run hello-world image
   ```sh
   sudo docker run hello-world
   ```

8. If you would like to use Docker as a non-root user, you should now consider adding your user to the “docker” group with something like:

```sh
  sudo usermod -aG docker $USER
```


---


<br>

- ### Installation of Docker(20.10.3) Debian

1. Uninstall old versions, so older versions of Docker were called docker, docker.io, or docker-engine. If these are installed, uninstall them

```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
```

2. Update the apt package index and install packages to allow apt to use a repository over HTTPS
   
   ```sh
   sudo apt-get update
 
   sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
   ```

3. Add Docker’s official GPG key
   
   ```sh
   curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
   ```

   Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88, by searching for the last 8 characters of the fingerprint.

   ```sh
   sudo apt-key fingerprint 0EBFCD88

    # pub   4096R/0EBFCD88 2017-02-22
    #      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
    # uid                  Docker Release (CE deb) <docker@docker.com>
    # sub   4096R/F273FCD8 2017-02-22
   ```

4. Use the following command to set up the stable repository.

```sh
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
```

5. Install Docker Engine

```sh
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io
```

6. To install a specific version of Docker Engine, list the available versions in the repo, then select and install

```sh
  apt-cache madison docker-ce

  # docker-ce | 5:18.09.1~3-0~debian-stretch | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  # docker-ce | 5:18.09.0~3-0~debian-stretch | https://download.docker.com/linux/debian stretch/stable amd64 Packages
  ...
```

 Install a specific version using the version string from the second column, for example, 5:18.09.1~3-0~debian-stretch.

   ```sh
   #sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io
   sudo apt-get install docker-ce="5:18.09.1~3-0~debian-stretch" docker-ce-cli="5:18.09.1~3-0~debian-stretch" containerd.io
  ```

7. To test and verify that Docker Engineis installed properly, lets run hello-world image
   ```sh
   sudo docker run hello-world
   ```

8. If you would like to use Docker as a non-root user, you should now consider adding your user to the “docker” group with something like:

```sh
  sudo usermod -aG docker $USER
```

---

<br>
