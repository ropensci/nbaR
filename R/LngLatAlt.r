# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#'
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # LngLatAlt$new()
#'
#' @format
#' R6 class
#'
#' @title LngLatAlt Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for LngLatAlt objects.
#'
#'
#' @field longitude  numeric
#'
#' @field latitude  numeric
#'
#' @field altitude  numeric
#'
#' @field additionalElements  list(numeric)
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor LngLatAlt object.
#'
#' }
#' \item{\code{$fromList(LngLatAltList)}}{
#'
#'   Create LngLatAlt object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of LngLatAlt.
#'
#' }
#' \item{\code{fromJSONString(LngLatAltJson)}}{
#'
#'   Create LngLatAlt object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of LngLatAlt.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LngLatAlt <- R6::R6Class(
  "LngLatAlt",
  public = list(
    `longitude` = NULL,
    `latitude` = NULL,
    `altitude` = NULL,
    `additionalElements` = NULL,
    initialize = function(
                              `longitude`,
                              `latitude`,
                              `altitude`,
                              `additionalElements`) {
      if (!missing(`longitude`)) {
        stopifnot(
          is.numeric(`longitude`),
          length(`longitude`) == 1
        )
        self[["longitude"]] <- `longitude`
      }
      if (!missing(`latitude`)) {
        stopifnot(
          is.numeric(`latitude`),
          length(`latitude`) == 1
        )
        self[["latitude"]] <- `latitude`
      }
      if (!missing(`altitude`)) {
        stopifnot(
          is.numeric(`altitude`),
          length(`altitude`) == 1
        )
        self[["altitude"]] <- `altitude`
      }
      if (!missing(`additionalElements`)) {
        stopifnot(
          is.list(`additionalElements`),
          length(`additionalElements`) != 0
        )
        lapply(
          `additionalElements`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["additionalElements"]] <- unname(`additionalElements`)
      }
    },
    toList = function() {
      LngLatAltList <- list()
      if (!is.null(self[["longitude"]])) {
        LngLatAltList[["longitude"]] <-
          self[["longitude"]]
      }
      if (!is.null(self[["latitude"]])) {
        LngLatAltList[["latitude"]] <-
          self[["latitude"]]
      }
      if (!is.null(self[["altitude"]])) {
        LngLatAltList[["altitude"]] <-
          self[["altitude"]]
      }
      if (!is.null(self[["additionalElements"]])) {
        LngLatAltList[["additionalElements"]] <-
          self[["additionalElements"]]
      }
      ## omit empty nested lists in returned list
      LngLatAltList[vapply(
        LngLatAltList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(LngLatAltList,
                            typeMapping = NULL) {
      self[["longitude"]] <-
        LngLatAltList[["longitude"]]
      self[["latitude"]] <-
        LngLatAltList[["latitude"]]
      self[["altitude"]] <-
        LngLatAltList[["altitude"]]
      self[["additionalElements"]] <-
        LngLatAltList[["additionalElements"]]
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
    fromJSONString = function(LngLatAltJson,
                                  typeMapping = NULL) {
      LngLatAltList <- jsonlite::fromJSON(
        LngLatAltJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(LngLatAltList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<LngLatAlt>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$longitude) == "environment") {
        cat("\tlongitude:\tobject of class", paste0("<", class(self$longitude)[1], ">"), "\n")
      }
      else if (typeof(self$longitude) == "list") {
        cat("\tlongitude:\tlist of length", length(self$longitude), "\n")
      }
      else {
        cat("\tlongitude:\t", self$longitude, "\n")
      }
      if (typeof(self$latitude) == "environment") {
        cat("\tlatitude:\tobject of class", paste0("<", class(self$latitude)[1], ">"), "\n")
      }
      else if (typeof(self$latitude) == "list") {
        cat("\tlatitude:\tlist of length", length(self$latitude), "\n")
      }
      else {
        cat("\tlatitude:\t", self$latitude, "\n")
      }
      if (typeof(self$altitude) == "environment") {
        cat("\taltitude:\tobject of class", paste0("<", class(self$altitude)[1], ">"), "\n")
      }
      else if (typeof(self$altitude) == "list") {
        cat("\taltitude:\tlist of length", length(self$altitude), "\n")
      }
      else {
        cat("\taltitude:\t", self$altitude, "\n")
      }
      if (typeof(self$additionalElements) == "environment") {
        cat("\tadditionalElements:\tobject of class", paste0("<", class(self$additionalElements)[1], ">"), "\n")
      }
      else if (typeof(self$additionalElements) == "list") {
        cat("\tadditionalElements:\tlist of length", length(self$additionalElements), "\n")
      }
      else {
        cat("\tadditionalElements:\t", self$additionalElements, "\n")
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
