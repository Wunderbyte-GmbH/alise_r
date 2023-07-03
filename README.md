# ALiSe R

Web API that provides endpoints to perform CAT calculations.

## Requirements

- R
- R packages: `plumber`, `tam`, `birtr`, `logging`

## Usage
 Start the API with

 ```
 Rscript ./run.R
 ```

 When the script is running, the API documentation can be found at the
 `/__docs__/` endpoint. If you set the listen address to 127.0.0.1 and the port
 to 8000 (see [configuration section](#configuration)), that would be
 http://127.0.0.1:8000/__docs__/.

### Configuration

- The listen address can be set with the `WB_CAT_LISTEN_ADDRESS` environment
variable. Defaults to http://127.0.0.1
- Port can be set with the `WB_CAT_PORT` environment variable. Defaults to
8000
