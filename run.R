#
# Start the R plumber API
#
# Usage: [WB_CAT_LISTEN_ADDRESS=127.0.0.1 WB_CAT_PORT=8000] Rscript ./run.R
#
# Listen address can be set with the WB_CAT_LISTEN_ADDRESS environment
# variable. Defaults to 127.0.0.1
# Port can be set with the WB_CAT_PORT environment variable. Defaults to
# 8000
#

library(plumber)

pr("./plumber.R") |>
    pr_run(host = Sys.getenv("WB_CAT_LISTEN_ADDRESS",
                             unset = "127.0.0.1"
                             ),
           port = as.integer(Sys.getenv("WB_CAT_PORT",
                                        unset = 8000
                             )
           )
    )
