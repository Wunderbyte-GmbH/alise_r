# ALiSe R

Web API that provides endpoints to perform CAT calculations.

## Requirements

- R
- R packages: `plumber`, `tam`, `birtr`, `logging`

## Setup

 1. Install R (on debian the command should be `sudo apt-get install r-base r-base-dev`)
 2. Install required R packages. In R, run `install.packages(c("plumber", "tam", "birtr", "logging"), dependencies=TRUE)`
    In case of errors, you might have to install some development libraries on your host machine (libsodium, libcurl,...).
 3. See the description in the [systemd](systemd/README.md) folder for how to set up and run the API as a service.

 When the script is running, the API documentation can be found at the
 `/__docs__/` endpoint. If you set the listen address to 127.0.0.1 and the port
 to 8000 (see [configuration section](#configuration)), that would be
 http://127.0.0.1:8000/__docs__/.

### Configuration

- The listen address can be set with the `WB_CAT_LISTEN_ADDRESS` environment
variable. Defaults to http://127.0.0.1
- Port can be set with the `WB_CAT_PORT` environment variable. Defaults to
8000
