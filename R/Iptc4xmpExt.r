# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Iptc4xmpExt Class
#'
#'
#'
#' @field locationShown  character
#' @field worldRegion  character
#' @field countryCode  character
#' @field countryName  character
#' @field provinceState  character
#' @field city  character
#' @field sublocation  character
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
#'   Constructor Iptc4xmpExt object.
#'
#' }
#' \item{\code{$fromList(Iptc4xmpExtList)}}{
#'
#'   Create Iptc4xmpExt object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Iptc4xmpExt.
#'
#' }
#' \item{\code{fromJSONString(Iptc4xmpExtJson)}}{
#'
#'   Create Iptc4xmpExt object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Iptc4xmpExt.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Iptc4xmpExt <- R6::R6Class(
  "Iptc4xmpExt",
  public = list(
    `locationShown` = NULL,
    `worldRegion` = NULL,
    `countryCode` = NULL,
    `countryName` = NULL,
    `provinceState` = NULL,
    `city` = NULL,
    `sublocation` = NULL,
    initialize = function(
                              `locationShown`,
                              `worldRegion`,
                              `countryCode`,
                              `countryName`,
                              `provinceState`,
                              `city`,
                              `sublocation`) {
      if (!missing(`locationShown`)) {
        stopifnot(
          is.character(`locationShown`),
          length(`locationShown`) == 1
        )
        self[["locationShown"]] <- `locationShown`
      }
      if (!missing(`worldRegion`)) {
        stopifnot(
          is.character(`worldRegion`),
          length(`worldRegion`) == 1
        )
        self[["worldRegion"]] <- `worldRegion`
      }
      if (!missing(`countryCode`)) {
        stopifnot(
          is.character(`countryCode`),
          length(`countryCode`) == 1
        )
        self[["countryCode"]] <- `countryCode`
      }
      if (!missing(`countryName`)) {
        stopifnot(
          is.character(`countryName`),
          length(`countryName`) == 1
        )
        self[["countryName"]] <- `countryName`
      }
      if (!missing(`provinceState`)) {
        stopifnot(
          is.character(`provinceState`),
          length(`provinceState`) == 1
        )
        self[["provinceState"]] <- `provinceState`
      }
      if (!missing(`city`)) {
        stopifnot(
          is.character(`city`),
          length(`city`) == 1
        )
        self[["city"]] <- `city`
      }
      if (!missing(`sublocation`)) {
        stopifnot(
          is.character(`sublocation`),
          length(`sublocation`) == 1
        )
        self[["sublocation"]] <- `sublocation`
      }
    },
    toList = function() {
      Iptc4xmpExtList <- list()
      if (!is.null(self[["locationShown"]])) {
        Iptc4xmpExtList[["locationShown"]] <-
          self[["locationShown"]]
      }
      if (!is.null(self[["worldRegion"]])) {
        Iptc4xmpExtList[["worldRegion"]] <-
          self[["worldRegion"]]
      }
      if (!is.null(self[["countryCode"]])) {
        Iptc4xmpExtList[["countryCode"]] <-
          self[["countryCode"]]
      }
      if (!is.null(self[["countryName"]])) {
        Iptc4xmpExtList[["countryName"]] <-
          self[["countryName"]]
      }
      if (!is.null(self[["provinceState"]])) {
        Iptc4xmpExtList[["provinceState"]] <-
          self[["provinceState"]]
      }
      if (!is.null(self[["city"]])) {
        Iptc4xmpExtList[["city"]] <-
          self[["city"]]
      }
      if (!is.null(self[["sublocation"]])) {
        Iptc4xmpExtList[["sublocation"]] <-
          self[["sublocation"]]
      }
      ## omit empty nested lists in returned list
      Iptc4xmpExtList[vapply(
        Iptc4xmpExtList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(Iptc4xmpExtList,
                            typeMapping = NULL) {
      self[["locationShown"]] <-
        Iptc4xmpExtList[["locationShown"]]
      self[["worldRegion"]] <-
        Iptc4xmpExtList[["worldRegion"]]
      self[["countryCode"]] <-
        Iptc4xmpExtList[["countryCode"]]
      self[["countryName"]] <-
        Iptc4xmpExtList[["countryName"]]
      self[["provinceState"]] <-
        Iptc4xmpExtList[["provinceState"]]
      self[["city"]] <-
        Iptc4xmpExtList[["city"]]
      self[["sublocation"]] <-
        Iptc4xmpExtList[["sublocation"]]
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
    fromJSONString = function(Iptc4xmpExtJson,
                                  typeMapping = NULL) {
      Iptc4xmpExtList <- jsonlite::fromJSON(
        Iptc4xmpExtJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(Iptc4xmpExtList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<Iptc4xmpExt>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$locationShown) == "environment") {
        cat("\tlocationShown:\tobject of class", paste0("<", class(self$locationShown)[1], ">"), "\n")
      }
      else if (typeof(self$locationShown) == "list") {
        cat("\tlocationShown:\tlist of length", length(self$locationShown), "\n")
      }
      else {
        cat("\tlocationShown:\t", self$locationShown, "\n")
      }
      if (typeof(self$worldRegion) == "environment") {
        cat("\tworldRegion:\tobject of class", paste0("<", class(self$worldRegion)[1], ">"), "\n")
      }
      else if (typeof(self$worldRegion) == "list") {
        cat("\tworldRegion:\tlist of length", length(self$worldRegion), "\n")
      }
      else {
        cat("\tworldRegion:\t", self$worldRegion, "\n")
      }
      if (typeof(self$countryCode) == "environment") {
        cat("\tcountryCode:\tobject of class", paste0("<", class(self$countryCode)[1], ">"), "\n")
      }
      else if (typeof(self$countryCode) == "list") {
        cat("\tcountryCode:\tlist of length", length(self$countryCode), "\n")
      }
      else {
        cat("\tcountryCode:\t", self$countryCode, "\n")
      }
      if (typeof(self$countryName) == "environment") {
        cat("\tcountryName:\tobject of class", paste0("<", class(self$countryName)[1], ">"), "\n")
      }
      else if (typeof(self$countryName) == "list") {
        cat("\tcountryName:\tlist of length", length(self$countryName), "\n")
      }
      else {
        cat("\tcountryName:\t", self$countryName, "\n")
      }
      if (typeof(self$provinceState) == "environment") {
        cat("\tprovinceState:\tobject of class", paste0("<", class(self$provinceState)[1], ">"), "\n")
      }
      else if (typeof(self$provinceState) == "list") {
        cat("\tprovinceState:\tlist of length", length(self$provinceState), "\n")
      }
      else {
        cat("\tprovinceState:\t", self$provinceState, "\n")
      }
      if (typeof(self$city) == "environment") {
        cat("\tcity:\tobject of class", paste0("<", class(self$city)[1], ">"), "\n")
      }
      else if (typeof(self$city) == "list") {
        cat("\tcity:\tlist of length", length(self$city), "\n")
      }
      else {
        cat("\tcity:\t", self$city, "\n")
      }
      if (typeof(self$sublocation) == "environment") {
        cat("\tsublocation:\tobject of class", paste0("<", class(self$sublocation)[1], ">"), "\n")
      }
      else if (typeof(self$sublocation) == "list") {
        cat("\tsublocation:\tlist of length", length(self$sublocation), "\n")
      }
      else {
        cat("\tsublocation:\t", self$sublocation, "\n")
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
