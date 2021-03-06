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
#' # BioStratigraphy$new()
#'
#' @format
#' R6 class
#'
#' @title BioStratigraphy Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for BioStratigraphy objects.
#'
#'
#' @field youngBioDatingQualifier  character
#'
#' @field youngBioName  character
#'
#' @field youngFossilZone  character
#'
#' @field youngFossilSubZone  character
#'
#' @field youngBioCertainty  character
#'
#' @field youngStratType  character
#'
#' @field bioDatingQualifier  character
#'
#' @field bioPreferredFlag  logical
#'
#' @field rangePosition  character
#'
#' @field oldBioName  character
#'
#' @field bioIdentifier  character
#'
#' @field oldFossilzone  character
#'
#' @field oldFossilSubzone  character
#'
#' @field oldBioCertainty  character
#'
#' @field oldBioStratType  character
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor BioStratigraphy object.
#'
#' }
#' \item{\code{$fromList(BioStratigraphyList)}}{
#'
#'   Create BioStratigraphy object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of BioStratigraphy.
#'
#' }
#' \item{\code{fromJSONString(BioStratigraphyJson)}}{
#'
#'   Create BioStratigraphy object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of BioStratigraphy.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BioStratigraphy <- R6::R6Class(
  "BioStratigraphy",
  public = list(
    `youngBioDatingQualifier` = NULL,
    `youngBioName` = NULL,
    `youngFossilZone` = NULL,
    `youngFossilSubZone` = NULL,
    `youngBioCertainty` = NULL,
    `youngStratType` = NULL,
    `bioDatingQualifier` = NULL,
    `bioPreferredFlag` = NULL,
    `rangePosition` = NULL,
    `oldBioName` = NULL,
    `bioIdentifier` = NULL,
    `oldFossilzone` = NULL,
    `oldFossilSubzone` = NULL,
    `oldBioCertainty` = NULL,
    `oldBioStratType` = NULL,
    initialize = function(
                              `youngBioDatingQualifier`,
                              `youngBioName`,
                              `youngFossilZone`,
                              `youngFossilSubZone`,
                              `youngBioCertainty`,
                              `youngStratType`,
                              `bioDatingQualifier`,
                              `bioPreferredFlag`,
                              `rangePosition`,
                              `oldBioName`,
                              `bioIdentifier`,
                              `oldFossilzone`,
                              `oldFossilSubzone`,
                              `oldBioCertainty`,
                              `oldBioStratType`) {
      if (!missing(`youngBioDatingQualifier`)) {
        stopifnot(
          is.character(`youngBioDatingQualifier`),
          length(`youngBioDatingQualifier`) == 1
        )
        self[["youngBioDatingQualifier"]] <- `youngBioDatingQualifier`
      }
      if (!missing(`youngBioName`)) {
        stopifnot(
          is.character(`youngBioName`),
          length(`youngBioName`) == 1
        )
        self[["youngBioName"]] <- `youngBioName`
      }
      if (!missing(`youngFossilZone`)) {
        stopifnot(
          is.character(`youngFossilZone`),
          length(`youngFossilZone`) == 1
        )
        self[["youngFossilZone"]] <- `youngFossilZone`
      }
      if (!missing(`youngFossilSubZone`)) {
        stopifnot(
          is.character(`youngFossilSubZone`),
          length(`youngFossilSubZone`) == 1
        )
        self[["youngFossilSubZone"]] <- `youngFossilSubZone`
      }
      if (!missing(`youngBioCertainty`)) {
        stopifnot(
          is.character(`youngBioCertainty`),
          length(`youngBioCertainty`) == 1
        )
        self[["youngBioCertainty"]] <- `youngBioCertainty`
      }
      if (!missing(`youngStratType`)) {
        stopifnot(
          is.character(`youngStratType`),
          length(`youngStratType`) == 1
        )
        self[["youngStratType"]] <- `youngStratType`
      }
      if (!missing(`bioDatingQualifier`)) {
        stopifnot(
          is.character(`bioDatingQualifier`),
          length(`bioDatingQualifier`) == 1
        )
        self[["bioDatingQualifier"]] <- `bioDatingQualifier`
      }
      if (!missing(`bioPreferredFlag`)) {
        self[["bioPreferredFlag"]] <- `bioPreferredFlag`
      }
      if (!missing(`rangePosition`)) {
        stopifnot(
          is.character(`rangePosition`),
          length(`rangePosition`) == 1
        )
        self[["rangePosition"]] <- `rangePosition`
      }
      if (!missing(`oldBioName`)) {
        stopifnot(
          is.character(`oldBioName`),
          length(`oldBioName`) == 1
        )
        self[["oldBioName"]] <- `oldBioName`
      }
      if (!missing(`bioIdentifier`)) {
        stopifnot(
          is.character(`bioIdentifier`),
          length(`bioIdentifier`) == 1
        )
        self[["bioIdentifier"]] <- `bioIdentifier`
      }
      if (!missing(`oldFossilzone`)) {
        stopifnot(
          is.character(`oldFossilzone`),
          length(`oldFossilzone`) == 1
        )
        self[["oldFossilzone"]] <- `oldFossilzone`
      }
      if (!missing(`oldFossilSubzone`)) {
        stopifnot(
          is.character(`oldFossilSubzone`),
          length(`oldFossilSubzone`) == 1
        )
        self[["oldFossilSubzone"]] <- `oldFossilSubzone`
      }
      if (!missing(`oldBioCertainty`)) {
        stopifnot(
          is.character(`oldBioCertainty`),
          length(`oldBioCertainty`) == 1
        )
        self[["oldBioCertainty"]] <- `oldBioCertainty`
      }
      if (!missing(`oldBioStratType`)) {
        stopifnot(
          is.character(`oldBioStratType`),
          length(`oldBioStratType`) == 1
        )
        self[["oldBioStratType"]] <- `oldBioStratType`
      }
    },
    toList = function() {
      BioStratigraphyList <- list()
      if (!is.null(self[["youngBioDatingQualifier"]])) {
        BioStratigraphyList[["youngBioDatingQualifier"]] <-
          self[["youngBioDatingQualifier"]]
      }
      if (!is.null(self[["youngBioName"]])) {
        BioStratigraphyList[["youngBioName"]] <-
          self[["youngBioName"]]
      }
      if (!is.null(self[["youngFossilZone"]])) {
        BioStratigraphyList[["youngFossilZone"]] <-
          self[["youngFossilZone"]]
      }
      if (!is.null(self[["youngFossilSubZone"]])) {
        BioStratigraphyList[["youngFossilSubZone"]] <-
          self[["youngFossilSubZone"]]
      }
      if (!is.null(self[["youngBioCertainty"]])) {
        BioStratigraphyList[["youngBioCertainty"]] <-
          self[["youngBioCertainty"]]
      }
      if (!is.null(self[["youngStratType"]])) {
        BioStratigraphyList[["youngStratType"]] <-
          self[["youngStratType"]]
      }
      if (!is.null(self[["bioDatingQualifier"]])) {
        BioStratigraphyList[["bioDatingQualifier"]] <-
          self[["bioDatingQualifier"]]
      }
      if (!is.null(self[["bioPreferredFlag"]])) {
        BioStratigraphyList[["bioPreferredFlag"]] <-
          self[["bioPreferredFlag"]]
      }
      if (!is.null(self[["rangePosition"]])) {
        BioStratigraphyList[["rangePosition"]] <-
          self[["rangePosition"]]
      }
      if (!is.null(self[["oldBioName"]])) {
        BioStratigraphyList[["oldBioName"]] <-
          self[["oldBioName"]]
      }
      if (!is.null(self[["bioIdentifier"]])) {
        BioStratigraphyList[["bioIdentifier"]] <-
          self[["bioIdentifier"]]
      }
      if (!is.null(self[["oldFossilzone"]])) {
        BioStratigraphyList[["oldFossilzone"]] <-
          self[["oldFossilzone"]]
      }
      if (!is.null(self[["oldFossilSubzone"]])) {
        BioStratigraphyList[["oldFossilSubzone"]] <-
          self[["oldFossilSubzone"]]
      }
      if (!is.null(self[["oldBioCertainty"]])) {
        BioStratigraphyList[["oldBioCertainty"]] <-
          self[["oldBioCertainty"]]
      }
      if (!is.null(self[["oldBioStratType"]])) {
        BioStratigraphyList[["oldBioStratType"]] <-
          self[["oldBioStratType"]]
      }
      ## omit empty nested lists in returned list
      BioStratigraphyList[vapply(
        BioStratigraphyList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(BioStratigraphyList,
                            typeMapping = NULL) {
      self[["youngBioDatingQualifier"]] <-
        BioStratigraphyList[["youngBioDatingQualifier"]]
      self[["youngBioName"]] <-
        BioStratigraphyList[["youngBioName"]]
      self[["youngFossilZone"]] <-
        BioStratigraphyList[["youngFossilZone"]]
      self[["youngFossilSubZone"]] <-
        BioStratigraphyList[["youngFossilSubZone"]]
      self[["youngBioCertainty"]] <-
        BioStratigraphyList[["youngBioCertainty"]]
      self[["youngStratType"]] <-
        BioStratigraphyList[["youngStratType"]]
      self[["bioDatingQualifier"]] <-
        BioStratigraphyList[["bioDatingQualifier"]]
      self[["bioPreferredFlag"]] <-
        BioStratigraphyList[["bioPreferredFlag"]]
      self[["rangePosition"]] <-
        BioStratigraphyList[["rangePosition"]]
      self[["oldBioName"]] <-
        BioStratigraphyList[["oldBioName"]]
      self[["bioIdentifier"]] <-
        BioStratigraphyList[["bioIdentifier"]]
      self[["oldFossilzone"]] <-
        BioStratigraphyList[["oldFossilzone"]]
      self[["oldFossilSubzone"]] <-
        BioStratigraphyList[["oldFossilSubzone"]]
      self[["oldBioCertainty"]] <-
        BioStratigraphyList[["oldBioCertainty"]]
      self[["oldBioStratType"]] <-
        BioStratigraphyList[["oldBioStratType"]]
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
    fromJSONString = function(BioStratigraphyJson,
                                  typeMapping = NULL) {
      BioStratigraphyList <- jsonlite::fromJSON(
        BioStratigraphyJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(BioStratigraphyList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<BioStratigraphy>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$youngBioDatingQualifier) == "environment") {
        cat("\tyoungBioDatingQualifier:\tobject of class", paste0("<", class(self$youngBioDatingQualifier)[1], ">"), "\n")
      }
      else if (typeof(self$youngBioDatingQualifier) == "list") {
        cat("\tyoungBioDatingQualifier:\tlist of length", length(self$youngBioDatingQualifier), "\n")
      }
      else {
        cat("\tyoungBioDatingQualifier:\t", self$youngBioDatingQualifier, "\n")
      }
      if (typeof(self$youngBioName) == "environment") {
        cat("\tyoungBioName:\tobject of class", paste0("<", class(self$youngBioName)[1], ">"), "\n")
      }
      else if (typeof(self$youngBioName) == "list") {
        cat("\tyoungBioName:\tlist of length", length(self$youngBioName), "\n")
      }
      else {
        cat("\tyoungBioName:\t", self$youngBioName, "\n")
      }
      if (typeof(self$youngFossilZone) == "environment") {
        cat("\tyoungFossilZone:\tobject of class", paste0("<", class(self$youngFossilZone)[1], ">"), "\n")
      }
      else if (typeof(self$youngFossilZone) == "list") {
        cat("\tyoungFossilZone:\tlist of length", length(self$youngFossilZone), "\n")
      }
      else {
        cat("\tyoungFossilZone:\t", self$youngFossilZone, "\n")
      }
      if (typeof(self$youngFossilSubZone) == "environment") {
        cat("\tyoungFossilSubZone:\tobject of class", paste0("<", class(self$youngFossilSubZone)[1], ">"), "\n")
      }
      else if (typeof(self$youngFossilSubZone) == "list") {
        cat("\tyoungFossilSubZone:\tlist of length", length(self$youngFossilSubZone), "\n")
      }
      else {
        cat("\tyoungFossilSubZone:\t", self$youngFossilSubZone, "\n")
      }
      if (typeof(self$youngBioCertainty) == "environment") {
        cat("\tyoungBioCertainty:\tobject of class", paste0("<", class(self$youngBioCertainty)[1], ">"), "\n")
      }
      else if (typeof(self$youngBioCertainty) == "list") {
        cat("\tyoungBioCertainty:\tlist of length", length(self$youngBioCertainty), "\n")
      }
      else {
        cat("\tyoungBioCertainty:\t", self$youngBioCertainty, "\n")
      }
      if (typeof(self$youngStratType) == "environment") {
        cat("\tyoungStratType:\tobject of class", paste0("<", class(self$youngStratType)[1], ">"), "\n")
      }
      else if (typeof(self$youngStratType) == "list") {
        cat("\tyoungStratType:\tlist of length", length(self$youngStratType), "\n")
      }
      else {
        cat("\tyoungStratType:\t", self$youngStratType, "\n")
      }
      if (typeof(self$bioDatingQualifier) == "environment") {
        cat("\tbioDatingQualifier:\tobject of class", paste0("<", class(self$bioDatingQualifier)[1], ">"), "\n")
      }
      else if (typeof(self$bioDatingQualifier) == "list") {
        cat("\tbioDatingQualifier:\tlist of length", length(self$bioDatingQualifier), "\n")
      }
      else {
        cat("\tbioDatingQualifier:\t", self$bioDatingQualifier, "\n")
      }
      if (typeof(self$bioPreferredFlag) == "environment") {
        cat("\tbioPreferredFlag:\tobject of class", paste0("<", class(self$bioPreferredFlag)[1], ">"), "\n")
      }
      else if (typeof(self$bioPreferredFlag) == "list") {
        cat("\tbioPreferredFlag:\tlist of length", length(self$bioPreferredFlag), "\n")
      }
      else {
        cat("\tbioPreferredFlag:\t", self$bioPreferredFlag, "\n")
      }
      if (typeof(self$rangePosition) == "environment") {
        cat("\trangePosition:\tobject of class", paste0("<", class(self$rangePosition)[1], ">"), "\n")
      }
      else if (typeof(self$rangePosition) == "list") {
        cat("\trangePosition:\tlist of length", length(self$rangePosition), "\n")
      }
      else {
        cat("\trangePosition:\t", self$rangePosition, "\n")
      }
      if (typeof(self$oldBioName) == "environment") {
        cat("\toldBioName:\tobject of class", paste0("<", class(self$oldBioName)[1], ">"), "\n")
      }
      else if (typeof(self$oldBioName) == "list") {
        cat("\toldBioName:\tlist of length", length(self$oldBioName), "\n")
      }
      else {
        cat("\toldBioName:\t", self$oldBioName, "\n")
      }
      if (typeof(self$bioIdentifier) == "environment") {
        cat("\tbioIdentifier:\tobject of class", paste0("<", class(self$bioIdentifier)[1], ">"), "\n")
      }
      else if (typeof(self$bioIdentifier) == "list") {
        cat("\tbioIdentifier:\tlist of length", length(self$bioIdentifier), "\n")
      }
      else {
        cat("\tbioIdentifier:\t", self$bioIdentifier, "\n")
      }
      if (typeof(self$oldFossilzone) == "environment") {
        cat("\toldFossilzone:\tobject of class", paste0("<", class(self$oldFossilzone)[1], ">"), "\n")
      }
      else if (typeof(self$oldFossilzone) == "list") {
        cat("\toldFossilzone:\tlist of length", length(self$oldFossilzone), "\n")
      }
      else {
        cat("\toldFossilzone:\t", self$oldFossilzone, "\n")
      }
      if (typeof(self$oldFossilSubzone) == "environment") {
        cat("\toldFossilSubzone:\tobject of class", paste0("<", class(self$oldFossilSubzone)[1], ">"), "\n")
      }
      else if (typeof(self$oldFossilSubzone) == "list") {
        cat("\toldFossilSubzone:\tlist of length", length(self$oldFossilSubzone), "\n")
      }
      else {
        cat("\toldFossilSubzone:\t", self$oldFossilSubzone, "\n")
      }
      if (typeof(self$oldBioCertainty) == "environment") {
        cat("\toldBioCertainty:\tobject of class", paste0("<", class(self$oldBioCertainty)[1], ">"), "\n")
      }
      else if (typeof(self$oldBioCertainty) == "list") {
        cat("\toldBioCertainty:\tlist of length", length(self$oldBioCertainty), "\n")
      }
      else {
        cat("\toldBioCertainty:\t", self$oldBioCertainty, "\n")
      }
      if (typeof(self$oldBioStratType) == "environment") {
        cat("\toldBioStratType:\tobject of class", paste0("<", class(self$oldBioStratType)[1], ">"), "\n")
      }
      else if (typeof(self$oldBioStratType) == "list") {
        cat("\toldBioStratType:\tlist of length", length(self$oldBioStratType), "\n")
      }
      else {
        cat("\toldBioStratType:\t", self$oldBioStratType, "\n")
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
