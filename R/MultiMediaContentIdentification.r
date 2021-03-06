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
#' # MultiMediaContentIdentification$new()
#'
#' @format
#' R6 class
#'
#' @title MultiMediaContentIdentification Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for MultiMediaContentIdentification objects.
#'
#'
#' @field taxonRank  character
#'
#' @field scientificName  ScientificName
#'
#' @field typeStatus  character
#'
#' @field dateIdentified  character
#'
#' @field defaultClassification  DefaultClassification
#'
#' @field systemClassification  list(Monomial)
#'
#' @field vernacularNames  list(VernacularName)
#'
#' @field identificationQualifiers  list(character)
#'
#' @field identifiers  list(Agent)
#'
#' @field taxonomicEnrichments  list(TaxonomicEnrichment)
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor MultiMediaContentIdentification object.
#'
#' }
#' \item{\code{$fromList(MultiMediaContentIdentificationList)}}{
#'
#'   Create MultiMediaContentIdentification object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of MultiMediaContentIdentification.
#'
#' }
#' \item{\code{fromJSONString(MultiMediaContentIdentificationJson)}}{
#'
#'   Create MultiMediaContentIdentification object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of MultiMediaContentIdentification.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiMediaContentIdentification <- R6::R6Class(
  "MultiMediaContentIdentification",
  public = list(
    `taxonRank` = NULL,
    `scientificName` = NULL,
    `typeStatus` = NULL,
    `dateIdentified` = NULL,
    `defaultClassification` = NULL,
    `systemClassification` = NULL,
    `vernacularNames` = NULL,
    `identificationQualifiers` = NULL,
    `identifiers` = NULL,
    `taxonomicEnrichments` = NULL,
    initialize = function(
                              `taxonRank`,
                              `scientificName`,
                              `typeStatus`,
                              `dateIdentified`,
                              `defaultClassification`,
                              `systemClassification`,
                              `vernacularNames`,
                              `identificationQualifiers`,
                              `identifiers`,
                              `taxonomicEnrichments`) {
      if (!missing(`taxonRank`)) {
        stopifnot(
          is.character(`taxonRank`),
          length(`taxonRank`) == 1
        )
        self[["taxonRank"]] <- `taxonRank`
      }
      if (!missing(`scientificName`)) {
        stopifnot(R6::is.R6(`scientificName`))
        self[["scientificName"]] <- `scientificName`
      }
      if (!missing(`typeStatus`)) {
        stopifnot(
          is.character(`typeStatus`),
          length(`typeStatus`) == 1
        )
        self[["typeStatus"]] <- `typeStatus`
      }
      if (!missing(`dateIdentified`)) {
        stopifnot(
          is.character(`dateIdentified`),
          length(`dateIdentified`) == 1
        )
        self[["dateIdentified"]] <- `dateIdentified`
      }
      if (!missing(`defaultClassification`)) {
        stopifnot(R6::is.R6(`defaultClassification`))
        self[["defaultClassification"]] <- `defaultClassification`
      }
      if (!missing(`systemClassification`)) {
        stopifnot(
          is.list(`systemClassification`),
          length(`systemClassification`) != 0
        )
        lapply(
          `systemClassification`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["systemClassification"]] <- unname(`systemClassification`)
      }
      if (!missing(`vernacularNames`)) {
        stopifnot(
          is.list(`vernacularNames`),
          length(`vernacularNames`) != 0
        )
        lapply(
          `vernacularNames`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["vernacularNames"]] <- unname(`vernacularNames`)
      }
      if (!missing(`identificationQualifiers`)) {
        stopifnot(
          is.list(`identificationQualifiers`),
          length(`identificationQualifiers`) != 0
        )
        lapply(
          `identificationQualifiers`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["identificationQualifiers"]] <- unname(`identificationQualifiers`)
      }
      if (!missing(`identifiers`)) {
        stopifnot(
          is.list(`identifiers`),
          length(`identifiers`) != 0
        )
        lapply(
          `identifiers`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["identifiers"]] <- unname(`identifiers`)
      }
      if (!missing(`taxonomicEnrichments`)) {
        stopifnot(
          is.list(`taxonomicEnrichments`),
          length(`taxonomicEnrichments`) != 0
        )
        lapply(
          `taxonomicEnrichments`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["taxonomicEnrichments"]] <- unname(`taxonomicEnrichments`)
      }
    },
    toList = function() {
      MultiMediaContentIdentificationList <- list()
      if (!is.null(self[["taxonRank"]])) {
        MultiMediaContentIdentificationList[["taxonRank"]] <-
          self[["taxonRank"]]
      }
      if (!is.null(self[["scientificName"]])) {
        MultiMediaContentIdentificationList[["scientificName"]] <-
          self[["scientificName"]]$toList()
      }
      if (!is.null(self[["typeStatus"]])) {
        MultiMediaContentIdentificationList[["typeStatus"]] <-
          self[["typeStatus"]]
      }
      if (!is.null(self[["dateIdentified"]])) {
        MultiMediaContentIdentificationList[["dateIdentified"]] <-
          self[["dateIdentified"]]
      }
      if (!is.null(self[["defaultClassification"]])) {
        MultiMediaContentIdentificationList[["defaultClassification"]] <-
          self[["defaultClassification"]]$toList()
      }
      if (!is.null(self[["systemClassification"]])) {
        MultiMediaContentIdentificationList[["systemClassification"]] <-
          lapply(self[["systemClassification"]], function(x) x$toList())
      }
      if (!is.null(self[["vernacularNames"]])) {
        MultiMediaContentIdentificationList[["vernacularNames"]] <-
          lapply(self[["vernacularNames"]], function(x) x$toList())
      }
      if (!is.null(self[["identificationQualifiers"]])) {
        MultiMediaContentIdentificationList[["identificationQualifiers"]] <-
          self[["identificationQualifiers"]]
      }
      if (!is.null(self[["identifiers"]])) {
        MultiMediaContentIdentificationList[["identifiers"]] <-
          lapply(self[["identifiers"]], function(x) x$toList())
      }
      if (!is.null(self[["taxonomicEnrichments"]])) {
        MultiMediaContentIdentificationList[["taxonomicEnrichments"]] <-
          lapply(self[["taxonomicEnrichments"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      MultiMediaContentIdentificationList[vapply(
        MultiMediaContentIdentificationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(MultiMediaContentIdentificationList,
                            typeMapping = NULL) {
      self[["taxonRank"]] <-
        MultiMediaContentIdentificationList[["taxonRank"]]
      self[["scientificName"]] <- ScientificName$new()$fromList(
        MultiMediaContentIdentificationList[["scientificName"]],
        typeMapping = typeMapping
      )
      self[["typeStatus"]] <-
        MultiMediaContentIdentificationList[["typeStatus"]]
      self[["dateIdentified"]] <-
        MultiMediaContentIdentificationList[["dateIdentified"]]
      self[["defaultClassification"]] <- DefaultClassification$new()$fromList(
        MultiMediaContentIdentificationList[["defaultClassification"]],
        typeMapping = typeMapping
      )
      self[["systemClassification"]] <- lapply(
        MultiMediaContentIdentificationList[["systemClassification"]],
        function(x) {
          Monomial$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["vernacularNames"]] <- lapply(
        MultiMediaContentIdentificationList[["vernacularNames"]],
        function(x) {
          VernacularName$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["identificationQualifiers"]] <-
        MultiMediaContentIdentificationList[["identificationQualifiers"]]
      self[["identifiers"]] <- lapply(
        MultiMediaContentIdentificationList[["identifiers"]],
        function(x) {
          Agent$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["taxonomicEnrichments"]] <- lapply(
        MultiMediaContentIdentificationList[["taxonomicEnrichments"]],
        function(x) {
          TaxonomicEnrichment$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
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
    fromJSONString = function(MultiMediaContentIdentificationJson,
                                  typeMapping = NULL) {
      MultiMediaContentIdentificationList <- jsonlite::fromJSON(
        MultiMediaContentIdentificationJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(MultiMediaContentIdentificationList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<MultiMediaContentIdentification>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$taxonRank) == "environment") {
        cat("\ttaxonRank:\tobject of class", paste0("<", class(self$taxonRank)[1], ">"), "\n")
      }
      else if (typeof(self$taxonRank) == "list") {
        cat("\ttaxonRank:\tlist of length", length(self$taxonRank), "\n")
      }
      else {
        cat("\ttaxonRank:\t", self$taxonRank, "\n")
      }
      if (typeof(self$scientificName) == "environment") {
        cat("\tscientificName:\tobject of class", paste0("<", class(self$scientificName)[1], ">"), "\n")
      }
      else if (typeof(self$scientificName) == "list") {
        cat("\tscientificName:\tlist of length", length(self$scientificName), "\n")
      }
      else {
        cat("\tscientificName:\t", self$scientificName, "\n")
      }
      if (typeof(self$typeStatus) == "environment") {
        cat("\ttypeStatus:\tobject of class", paste0("<", class(self$typeStatus)[1], ">"), "\n")
      }
      else if (typeof(self$typeStatus) == "list") {
        cat("\ttypeStatus:\tlist of length", length(self$typeStatus), "\n")
      }
      else {
        cat("\ttypeStatus:\t", self$typeStatus, "\n")
      }
      if (typeof(self$dateIdentified) == "environment") {
        cat("\tdateIdentified:\tobject of class", paste0("<", class(self$dateIdentified)[1], ">"), "\n")
      }
      else if (typeof(self$dateIdentified) == "list") {
        cat("\tdateIdentified:\tlist of length", length(self$dateIdentified), "\n")
      }
      else {
        cat("\tdateIdentified:\t", self$dateIdentified, "\n")
      }
      if (typeof(self$defaultClassification) == "environment") {
        cat("\tdefaultClassification:\tobject of class", paste0("<", class(self$defaultClassification)[1], ">"), "\n")
      }
      else if (typeof(self$defaultClassification) == "list") {
        cat("\tdefaultClassification:\tlist of length", length(self$defaultClassification), "\n")
      }
      else {
        cat("\tdefaultClassification:\t", self$defaultClassification, "\n")
      }
      if (typeof(self$systemClassification) == "environment") {
        cat("\tsystemClassification:\tobject of class", paste0("<", class(self$systemClassification)[1], ">"), "\n")
      }
      else if (typeof(self$systemClassification) == "list") {
        cat("\tsystemClassification:\tlist of length", length(self$systemClassification), "\n")
      }
      else {
        cat("\tsystemClassification:\t", self$systemClassification, "\n")
      }
      if (typeof(self$vernacularNames) == "environment") {
        cat("\tvernacularNames:\tobject of class", paste0("<", class(self$vernacularNames)[1], ">"), "\n")
      }
      else if (typeof(self$vernacularNames) == "list") {
        cat("\tvernacularNames:\tlist of length", length(self$vernacularNames), "\n")
      }
      else {
        cat("\tvernacularNames:\t", self$vernacularNames, "\n")
      }
      if (typeof(self$identificationQualifiers) == "environment") {
        cat("\tidentificationQualifiers:\tobject of class", paste0("<", class(self$identificationQualifiers)[1], ">"), "\n")
      }
      else if (typeof(self$identificationQualifiers) == "list") {
        cat("\tidentificationQualifiers:\tlist of length", length(self$identificationQualifiers), "\n")
      }
      else {
        cat("\tidentificationQualifiers:\t", self$identificationQualifiers, "\n")
      }
      if (typeof(self$identifiers) == "environment") {
        cat("\tidentifiers:\tobject of class", paste0("<", class(self$identifiers)[1], ">"), "\n")
      }
      else if (typeof(self$identifiers) == "list") {
        cat("\tidentifiers:\tlist of length", length(self$identifiers), "\n")
      }
      else {
        cat("\tidentifiers:\t", self$identifiers, "\n")
      }
      if (typeof(self$taxonomicEnrichments) == "environment") {
        cat("\ttaxonomicEnrichments:\tobject of class", paste0("<", class(self$taxonomicEnrichments)[1], ">"), "\n")
      }
      else if (typeof(self$taxonomicEnrichments) == "list") {
        cat("\ttaxonomicEnrichments:\tlist of length", length(self$taxonomicEnrichments), "\n")
      }
      else {
        cat("\ttaxonomicEnrichments:\t", self$taxonomicEnrichments, "\n")
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
