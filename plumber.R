#
# Plumber API that is used by ALiSe CAT Quiz subplugins
#

library(plumber)
library(TAM)
library(logger)

log_threshold(INFO)

#* @apiTitle Wunderbyte CAT API
#* @apiDescription Provides endpoints that can be used by CAT models.

#* Return dimension of matrix
#* @param m The matrix
#* @post /RM
function(m) {
  log_info("Endpoint /RM called")
  # Use jsonlite::toJSON(...) to see how to represent data in json format
  result <- tam(m)
  result$xsi
}

#* Return the person ability
#* @param mdl The model parameter. 1, 2 or 3
#* @param u Numeric vector of 0s and 1s representing the responses to items
#* @param b Numeric vector representing the values of item difficulty
#* @param a Numeric vector representing the values of item discrimination
#* @post /ability
# Requires library(birtr)?
#function(mdl, u, b, a) {
#  ability(mdl, u,  b, a)
#}
