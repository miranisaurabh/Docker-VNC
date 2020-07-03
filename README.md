# Docker-VNC

To access the display of a docker container

## Initial Setup

### Setting up Dockerfile

Add the following to the Dockerfile

```bash
# environment variables to enable VNC display
ENV DISPLAY=:1 \
    VNC_PORT=5901 \
    NO_VNC_PORT=6901

EXPOSE $VNC_PORT $NO_VNC_PORT

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

ENV TERM=xterm \
    DEBIAN_FRONTEND=noninteractive \
    VNC_COL_DEPTH=24 \
    VNC_RESOLUTION=1920x1080 \
    VNC_PW=vncpassword \
    VNC_VIEW_ONLY=false
```

### Run the Docker container

```
$ docker run -it -p 5901:5901 -p 6901:6901 $CONTAINER_ID bash
```
## Enabling VNC

### Clone this repository

```
$ git clone https://github.com/miranisaurabh/Docker-VNC.git
```

### Run the script

```
$ cd Docker-VNC
$ chmod a+x run_all_scripts.sh
$ ./run_all_scripts.sh
```
If the docker container is on local machine, then connect using the ip address printed after completing the above steps

```
VNCSERVER started on DISPLAY= :1 
	=> connect via VNC viewer with IP:5901
```

If the docker container is on remote machine, then get the ip (public) using,
```
$ wget http://ipinfo.io/ip -qO -
```
The server for VNC Viewer will be IP:5901 and password vncpassword
NOTE: Change the ENV variable `$VNC_PW` to change the password

## TODO

- [ ] Add NoVNC support
- [ ] Remove unwanted installation

Adapted from consol/ubuntu-xfce-vnc docker container
