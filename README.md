# Punjab Docker Container
This is a basic docker container for the Punjab BOSH connection manager.

## Configuration
In order to configure the container, you will need to build it from scratch.
Edit the punjab.tac file to your liking. Consult the information at the Punjab repo linked above.

## Build
The Dockerfile pulls from the [Punjab Github Repo](https://github.com/twonds/punjab) and then builds the container.
You can build it from scratch using `sudo ./build`, or by manually running the docker build process with your preferred options.

## Using the docker image repository
Pull the image via `sudo docker pull thisgeek/punjab`.

## Running the container
Execute `sudo ./run`.
The container will be called 'punjab' and listens on port 7070.

