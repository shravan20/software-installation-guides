# Installation Guide for PostgreSQL

| Sl No  | Version  | Operating System |
|:-:|:-:|:-:|
| 1  | [latest(v4.2.1)](#)  | Debian / Ubuntu (all v<20.10)  |


---

<br>

- ### Installation of PostgreSQL(13.x.x) Ubuntu/Debian 

1. Update the system software packages using the following apt command.

```sh
  sudo apt update
```

2. Setup the repository & install the public key for the repository (if not done previously)

```sh
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
```

3. Create the repository configuration file

```sh
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```

4. Install pgAdmin, PostgreSQL UI - Client

```sh
sudo apt install pgadmin4
```

These clients are available as desktop-application, as well as web-mode.

```sh
# Install for desktop mode only:
sudo apt install pgadmin4-desktop
```

```sh
# Install for web mode only: 
sudo apt install pgadmin4-web 
```

5. If you have installed the web-mode pgadmin; configure the webserver

```sh
sudo /usr/pgadmin4/bin/setup-web.sh
```

6. To check if PostgreSQL has been installed, check using the following command

```sh
psql --version
```

---

<br>
