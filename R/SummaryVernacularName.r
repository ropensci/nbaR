# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummaryVernacularName Class
#'
#'
#'
#' @field name  character
#' @field language  character
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
#'   Constructor SummaryVernacularName object.
#'
#' }
#' \item{\code{$fromList(SummaryVernacularNameList)}}{
#'
#'   Create SummaryVernacularName object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of SummaryVernacularName.
#'
#' }
#' \item{\code{fromJSONString(SummaryVernacularNameJson)}}{
#'
#'   Create SummaryVernacularName object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of SummaryVernacularName.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryVernacularName <- R6::R6Class(
  "SummaryVernacularName",
  public = list(
    `name` = NULL,
    `language` = NULL,
    initialize = function(
                              `name`,
                              `language`) {
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
      if (!missing(`language`)) {
        stopifnot(
          is.character(`language`),
          length(`language`) == 1
        )
        self[["language"]] <- `language`
      }
    },
    toList = function() {
      SummaryVernacularNameList <- list()
      if (!is.null(self[["name"]])) {
        SummaryVernacularNameList[["name"]] <-
          self[["name"]]
      }
      if (!is.null(self[["language"]])) {
        SummaryVernacularNameList[["language"]] <-
          self[["language"]]
      }
      ## omit empty nested lists in returned list
      SummaryVernacularNameList[vapply(
        SummaryVernacularNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SummaryVernacularNameList,
                            typeMapping = NULL) {
      self[["name"]] <-
        SummaryVernacularNameList[["name"]]
      self[["language"]] <-
        SummaryVernacularNameList[["language"]]
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
    fromJSONString = function(SummaryVernacularNameJson,
                                  typeMapping = NULL) {
      SummaryVernacularNameList <- jsonlite::fromJSON(
        SummaryVernacularNameJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(SummaryVernacularNameList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<SummaryVernacularName>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$name) == "environment") {
        cat("\tname:\tobject of class", paste0("<", class(self$name)[1], ">"), "\n")
      }
      else if (typeof(self$name) == "list") {
        cat("\tname:\tlist of length", length(self$name), "\n")
      }
      else {
        cat("\tname:\t", self$name, "\n")
      }
      if (typeof(self$language) == "environment") {
        cat("\tlanguage:\tobject of class", paste0("<", class(self$language)[1], ">"), "\n")
      }
      else if (typeof(self$language) == "list") {
        cat("\tlanguage:\tlist of length", length(self$language), "\n")
      }
      else {
        cat("\tlanguage:\t", self$language, "\n")
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
