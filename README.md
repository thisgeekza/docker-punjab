# Punjab Docker Container
This is a basic docker container for the Punjab BOSH connection manager.

## Configuration
The container can be configured via the `run` script. At the top of the file, two variables are specified:

   PJPORT=5280
   PJSRVHOST=""

`PJPORT` specifies the port that Punjab will listen on, by default, it will listen on port 5280.
`PJSRVHOST` specifies the SRV record to use for punjab, should it be necessary. If not specified, it is not used.
The format for the expected string is the same as used by dnsmasq "srv-host" option:

`[service].[protocol].[domain],[target],[port],[priority],[weight]`
`_xampp._tcp.example.org,example.org,5222,0,100`

## Build
The Dockerfile pulls from the [Punjab Github Repo](https://github.com/twonds/punjab) and then builds the container.
You can build it from scratch using `sudo ./build`, or by manually running the docker build process with your preferred options.

## Using the docker image repository
Pull the image via `sudo docker pull thisgeek/punjab`.

## Running the container
Execute `sudo ./run`.
The container will be called 'punjab' and listens on port 5280.

