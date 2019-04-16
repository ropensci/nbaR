# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ServiceAccessPoint Class
#'
#'
#'
#' @field accessUri  character
#'
#' @field format  character
#'
#' @field variant  character
#'
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
#'   Constructor ServiceAccessPoint object.
#'
#' }
#' \item{\code{$fromList(ServiceAccessPointList)}}{
#'
#'   Create ServiceAccessPoint object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of ServiceAccessPoint.
#'
#' }
#' \item{\code{fromJSONString(ServiceAccessPointJson)}}{
#'
#'   Create ServiceAccessPoint object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of ServiceAccessPoint.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceAccessPoint <- R6::R6Class(
  "ServiceAccessPoint",
  public = list(
    `accessUri` = NULL,
    `format` = NULL,
    `variant` = NULL,
    initialize = function(
                              `accessUri`,
                              `format`,
                              `variant`) {
      if (!missing(`accessUri`)) {
        stopifnot(
          is.character(`accessUri`),
          length(`accessUri`) == 1
        )
        self[["accessUri"]] <- `accessUri`
      }
      if (!missing(`format`)) {
        stopifnot(
          is.character(`format`),
          length(`format`) == 1
        )
        self[["format"]] <- `format`
      }
      if (!missing(`variant`)) {
        stopifnot(
          is.character(`variant`),
          length(`variant`) == 1
        )
        self[["variant"]] <- `variant`
      }
    },
    toList = function() {
      ServiceAccessPointList <- list()
      if (!is.null(self[["accessUri"]])) {
        ServiceAccessPointList[["accessUri"]] <-
          self[["accessUri"]]
      }
      if (!is.null(self[["format"]])) {
        ServiceAccessPointList[["format"]] <-
          self[["format"]]
      }
      if (!is.null(self[["variant"]])) {
        ServiceAccessPointList[["variant"]] <-
          self[["variant"]]
      }
      ## omit empty nested lists in returned list
      ServiceAccessPointList[vapply(
        ServiceAccessPointList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ServiceAccessPointList,
                            typeMapping = NULL) {
      self[["accessUri"]] <-
        ServiceAccessPointList[["accessUri"]]
      self[["format"]] <-
        ServiceAccessPointList[["format"]]
      self[["variant"]] <-
        ServiceAccessPointList[["variant"]]
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
    fromJSONString = function(ServiceAccessPointJson,
                                  typeMapping = NULL) {
      ServiceAccessPointList <- jsonlite::fromJSON(
        ServiceAccessPointJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ServiceAccessPointList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<ServiceAccessPoint>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$accessUri) == "environment") {
        cat("\taccessUri:\tobject of class", paste0("<", class(self$accessUri)[1], ">"), "\n")
      }
      else if (typeof(self$accessUri) == "list") {
        cat("\taccessUri:\tlist of length", length(self$accessUri), "\n")
      }
      else {
        cat("\taccessUri:\t", self$accessUri, "\n")
      }
      if (typeof(self$format) == "environment") {
        cat("\tformat:\tobject of class", paste0("<", class(self$format)[1], ">"), "\n")
      }
      else if (typeof(self$format) == "list") {
        cat("\tformat:\tlist of length", length(self$format), "\n")
      }
      else {
        cat("\tformat:\t", self$format, "\n")
      }
      if (typeof(self$variant) == "environment") {
        cat("\tvariant:\tobject of class", paste0("<", class(self$variant)[1], ">"), "\n")
      }
      else if (typeof(self$variant) == "list") {
        cat("\tvariant:\tlist of length", length(self$variant), "\n")
      }
      else {
        cat("\tvariant:\t", self$variant, "\n")
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
