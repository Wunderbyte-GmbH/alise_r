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

### Configuration

- Hostname or IP address can be set with the `WB_CAT_HOSTNAME` environment
variable. Defaults to http://127.0.0.1
- Port can be set with the `WB_CAT_PORT` environment variable. Defaults to
8000
