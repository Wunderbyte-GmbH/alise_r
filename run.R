#
# Start the R plumber API
#
# Usage: [WB_CAT_HOSTNAME=http://127.0.0.1 WB_CAT_PORT=8000] Rscript ./run.R
#
# Hostname or IP address can be set with the WB_CAT_HOSTNAME environment
# variable. Defaults to http://127.0.0.1
# Port can be set with the WB_CAT_PORT environment variable. Defaults to
# 8000
#

library(plumber)

pr("./plumber.R") |>
    pr_run(host = Sys.getenv("WB_CAT_HOSTNAME",
                             unset = "http://127.0.0.1"
                             ),
           port = as.integer(Sys.getenv("WB_CAT_PORT",
                                        unset = 8000
                             )
           )
    )
