# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummarySourceSystem Class
#'
#'
#'
#' @field code  character
#'
#'
#' @format
#'
#' @usage
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor SummarySourceSystem object.
#'
#' }
#' \item{\code{$fromList(SummarySourceSystemList)}}{
#'
#'   Create SummarySourceSystem object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of SummarySourceSystem.
#'
#' }
#' \item{\code{fromJSONString(SummarySourceSystemJson)}}{
#'
#'   Create SummarySourceSystem object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of SummarySourceSystem.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummarySourceSystem <- R6::R6Class(
  "SummarySourceSystem",
  public = list(
    `code` = NULL,
    initialize = function(
                              `code`) {
      if (!missing(`code`)) {
        stopifnot(
          is.character(`code`),
          length(`code`) == 1
        )
        self[["code"]] <- `code`
      }
    },
    toList = function() {
      SummarySourceSystemList <- list()
      if (!is.null(self[["code"]])) {
        SummarySourceSystemList[["code"]] <-
          self[["code"]]
      }
      ## omit empty nested lists in returned list
      SummarySourceSystemList[vapply(
        SummarySourceSystemList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SummarySourceSystemList,
                            typeMapping = NULL) {
      self[["code"]] <-
        SummarySourceSystemList[["code"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(SummarySourceSystemJson,
                                  typeMapping = NULL) {
      SummarySourceSystemList <- jsonlite::fromJSON(
        SummarySourceSystemJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(SummarySourceSystemList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<SummarySourceSystem>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$code) == "environment") {
        cat("\tcode:\tobject of class", paste0("<", class(self$code)[1], ">"), "\n")
      }
      else if (typeof(self$code) == "list") {
        cat("\tcode:\tlist of length", length(self$code), "\n")
      }
      else {
        cat("\tcode:\t", self$code, "\n")
      }
      ## print all methods
      cat("Methods:\n")
      cat("\tfromJSONString\n")
      cat("\ttoJSONString\n")
      cat("\tfromList\n")
      cat("\ttoList\n")
      cat("\tprint\n")
      invisible(self)
    }
  )
)
