# Installation Guide for Spring Tool Suite

| Sl No  | Version  | Operating System |
|:-:|:-:|:-:|
| 1  | [latest(v2)](./tools/STS)  | Debian / Ubuntu (all v<=20.10)  |


---

<br>

- ### Installation of Spring Tool Suite(3.x.x) Ubuntu/Debian

1. Use one of the links below to [download](https://spring.io/tools#suite-three) an all-in-one distribution for your platform (Windows, mac, Linux). In this case, Linux for our Ubuntu 18.

2. Now open your terminal (Alt + Ctrl + T) and go to your Downloads directory and execute the following commands:

```sh
cd Downloads

sudo mv spring-tool-suite-3.9.10.RELEASE-e4.13.0-linux-gtk-x86_64.tar.gz /opt

cd /opt/

sudo tar zxvf spring-tool-suite-3.9.10.RELEASE-e4.13.0-linux-gtk-x86_64.tar.gz

sudo ln -s /opt/sts-bundle/sts-3.9.10.RELEASE/STS /usr/local/bin/sts

sudo gedit /usr/share/applications/stsLauncher.desktop
```

3. Now use, gedit or nano to create an application launcher for STS.

```sh
[Desktop Entry]
Name=Spring Tool Suite
Comment=Spring Tool Suite 3.9.10
Exec=/opt/sts-bundle/sts-3.9.10.RELEASE/STS
Icon=/opt/sts-bundle/sts-3.9.10.RELEASE/icon.xpm
StartupNotify=true
Terminal=false
Type=Application
Categories=Development;IDE;Java;
```

4. Open a terminal and type

```sh
$ sts
```

Voila!!

![alt img](https://miro.medium.com/max/700/1*tbhYDqDkoVICDF4UNNCQEg.png)

5. or Typing “Spring Tool Suite” in the Application Search will bring up the STS App icon.

![alt image](https://miro.medium.com/max/700/1*3JDYi6kGv3xS4SPadHRpAA.png)