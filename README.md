# Punjab Docker Container
This is a basic docker container for the Punjab BOSH connection manager.

## How to use
Clone the github repository `git clone https://github.com/thisgeekza/docker-punjab.git`
Pull the docker image via `sudo docker pull thisgeek/punjab`.

## Configuration
The container can be configured via the `run` script. At the top of the file,
several variables are specified, but only two are really necessary.

```
PJPORT=5280
PJSRVHOST=
```

`PJPORT` - specifies the port that Punjab will listen on, by default, it will
listen on port 5280.
`PJSRVHOST` - specifies the SRV record to use for punjab, should it be
necessary. If not specified, it is not used. The format for the expected
string is the same as used by dnsmasq "srv-host" option:

`[service].[protocol].[domain],[target],[port],[priority],[weight]`

`_xampp._tcp.example.org,example.org,5222,0,100`

## Build
The Dockerfile pulls from the [Punjab Github Repo](https://github.com/twonds/punjab)
and then builds the container.
You can build it from scratch using `sudo ./build`, or by manually running the
docker build process with your preferred options.

## Running the container
Execute `sudo ./run`.
The container will be called 'punjab' by default and listens on port 5280.

You can check what is going on with the container using 
`sudo docker logs punjab` - assuming you've left the default container name.
