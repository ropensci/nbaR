# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SpecimenIdentification Class
#'
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
#' @field preferred  logical
#'
#' @field verificationStatus  character
#'
#' @field rockType  character
#'
#' @field associatedFossilAssemblage  character
#'
#' @field rockMineralUsage  character
#'
#' @field associatedMineralName  character
#'
#' @field remarks  character
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
#'   Constructor SpecimenIdentification object.
#'
#' }
#' \item{\code{$fromList(SpecimenIdentificationList)}}{
#'
#'   Create SpecimenIdentification object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of SpecimenIdentification.
#'
#' }
#' \item{\code{fromJSONString(SpecimenIdentificationJson)}}{
#'
#'   Create SpecimenIdentification object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of SpecimenIdentification.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpecimenIdentification <- R6::R6Class(
  "SpecimenIdentification",
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
    `preferred` = NULL,
    `verificationStatus` = NULL,
    `rockType` = NULL,
    `associatedFossilAssemblage` = NULL,
    `rockMineralUsage` = NULL,
    `associatedMineralName` = NULL,
    `remarks` = NULL,
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
                              `taxonomicEnrichments`,
                              `preferred`,
                              `verificationStatus`,
                              `rockType`,
                              `associatedFossilAssemblage`,
                              `rockMineralUsage`,
                              `associatedMineralName`,
                              `remarks`) {
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
      if (!missing(`preferred`)) {
        self[["preferred"]] <- `preferred`
      }
      if (!missing(`verificationStatus`)) {
        stopifnot(
          is.character(`verificationStatus`),
          length(`verificationStatus`) == 1
        )
        self[["verificationStatus"]] <- `verificationStatus`
      }
      if (!missing(`rockType`)) {
        stopifnot(
          is.character(`rockType`),
          length(`rockType`) == 1
        )
        self[["rockType"]] <- `rockType`
      }
      if (!missing(`associatedFossilAssemblage`)) {
        stopifnot(
          is.character(`associatedFossilAssemblage`),
          length(`associatedFossilAssemblage`) == 1
        )
        self[["associatedFossilAssemblage"]] <- `associatedFossilAssemblage`
      }
      if (!missing(`rockMineralUsage`)) {
        stopifnot(
          is.character(`rockMineralUsage`),
          length(`rockMineralUsage`) == 1
        )
        self[["rockMineralUsage"]] <- `rockMineralUsage`
      }
      if (!missing(`associatedMineralName`)) {
        stopifnot(
          is.character(`associatedMineralName`),
          length(`associatedMineralName`) == 1
        )
        self[["associatedMineralName"]] <- `associatedMineralName`
      }
      if (!missing(`remarks`)) {
        stopifnot(
          is.character(`remarks`),
          length(`remarks`) == 1
        )
        self[["remarks"]] <- `remarks`
      }
    },
    toList = function() {
      SpecimenIdentificationList <- list()
      if (!is.null(self[["taxonRank"]])) {
        SpecimenIdentificationList[["taxonRank"]] <-
          self[["taxonRank"]]
      }
      if (!is.null(self[["scientificName"]])) {
        SpecimenIdentificationList[["scientificName"]] <-
          self[["scientificName"]]$toList()
      }
      if (!is.null(self[["typeStatus"]])) {
        SpecimenIdentificationList[["typeStatus"]] <-
          self[["typeStatus"]]
      }
      if (!is.null(self[["dateIdentified"]])) {
        SpecimenIdentificationList[["dateIdentified"]] <-
          self[["dateIdentified"]]
      }
      if (!is.null(self[["defaultClassification"]])) {
        SpecimenIdentificationList[["defaultClassification"]] <-
          self[["defaultClassification"]]$toList()
      }
      if (!is.null(self[["systemClassification"]])) {
        SpecimenIdentificationList[["systemClassification"]] <-
          lapply(self[["systemClassification"]], function(x) x$toList())
      }
      if (!is.null(self[["vernacularNames"]])) {
        SpecimenIdentificationList[["vernacularNames"]] <-
          lapply(self[["vernacularNames"]], function(x) x$toList())
      }
      if (!is.null(self[["identificationQualifiers"]])) {
        SpecimenIdentificationList[["identificationQualifiers"]] <-
          self[["identificationQualifiers"]]
      }
      if (!is.null(self[["identifiers"]])) {
        SpecimenIdentificationList[["identifiers"]] <-
          lapply(self[["identifiers"]], function(x) x$toList())
      }
      if (!is.null(self[["taxonomicEnrichments"]])) {
        SpecimenIdentificationList[["taxonomicEnrichments"]] <-
          lapply(self[["taxonomicEnrichments"]], function(x) x$toList())
      }
      if (!is.null(self[["preferred"]])) {
        SpecimenIdentificationList[["preferred"]] <-
          self[["preferred"]]
      }
      if (!is.null(self[["verificationStatus"]])) {
        SpecimenIdentificationList[["verificationStatus"]] <-
          self[["verificationStatus"]]
      }
      if (!is.null(self[["rockType"]])) {
        SpecimenIdentificationList[["rockType"]] <-
          self[["rockType"]]
      }
      if (!is.null(self[["associatedFossilAssemblage"]])) {
        SpecimenIdentificationList[["associatedFossilAssemblage"]] <-
          self[["associatedFossilAssemblage"]]
      }
      if (!is.null(self[["rockMineralUsage"]])) {
        SpecimenIdentificationList[["rockMineralUsage"]] <-
          self[["rockMineralUsage"]]
      }
      if (!is.null(self[["associatedMineralName"]])) {
        SpecimenIdentificationList[["associatedMineralName"]] <-
          self[["associatedMineralName"]]
      }
      if (!is.null(self[["remarks"]])) {
        SpecimenIdentificationList[["remarks"]] <-
          self[["remarks"]]
      }
      ## omit empty nested lists in returned list
      SpecimenIdentificationList[vapply(
        SpecimenIdentificationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SpecimenIdentificationList,
                            typeMapping = NULL) {
      self[["taxonRank"]] <-
        SpecimenIdentificationList[["taxonRank"]]
      self[["scientificName"]] <- ScientificName$new()$fromList(
        SpecimenIdentificationList[["scientificName"]],
        typeMapping = typeMapping
      )
      self[["typeStatus"]] <-
        SpecimenIdentificationList[["typeStatus"]]
      self[["dateIdentified"]] <-
        SpecimenIdentificationList[["dateIdentified"]]
      self[["defaultClassification"]] <- DefaultClassification$new()$fromList(
        SpecimenIdentificationList[["defaultClassification"]],
        typeMapping = typeMapping
      )
      self[["systemClassification"]] <- lapply(
        SpecimenIdentificationList[["systemClassification"]],
        function(x) {
          Monomial$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["vernacularNames"]] <- lapply(
        SpecimenIdentificationList[["vernacularNames"]],
        function(x) {
          VernacularName$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["identificationQualifiers"]] <-
        SpecimenIdentificationList[["identificationQualifiers"]]
      self[["identifiers"]] <- lapply(
        SpecimenIdentificationList[["identifiers"]],
        function(x) {
          Agent$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["taxonomicEnrichments"]] <- lapply(
        SpecimenIdentificationList[["taxonomicEnrichments"]],
        function(x) {
          TaxonomicEnrichment$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["preferred"]] <-
        SpecimenIdentificationList[["preferred"]]
      self[["verificationStatus"]] <-
        SpecimenIdentificationList[["verificationStatus"]]
      self[["rockType"]] <-
        SpecimenIdentificationList[["rockType"]]
      self[["associatedFossilAssemblage"]] <-
        SpecimenIdentificationList[["associatedFossilAssemblage"]]
      self[["rockMineralUsage"]] <-
        SpecimenIdentificationList[["rockMineralUsage"]]
      self[["associatedMineralName"]] <-
        SpecimenIdentificationList[["associatedMineralName"]]
      self[["remarks"]] <-
        SpecimenIdentificationList[["remarks"]]
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
    fromJSONString = function(SpecimenIdentificationJson,
                                  typeMapping = NULL) {
      SpecimenIdentificationList <- jsonlite::fromJSON(
        SpecimenIdentificationJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(SpecimenIdentificationList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<SpecimenIdentification>\n")
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
      if (typeof(self$preferred) == "environment") {
        cat("\tpreferred:\tobject of class", paste0("<", class(self$preferred)[1], ">"), "\n")
      }
      else if (typeof(self$preferred) == "list") {
        cat("\tpreferred:\tlist of length", length(self$preferred), "\n")
      }
      else {
        cat("\tpreferred:\t", self$preferred, "\n")
      }
      if (typeof(self$verificationStatus) == "environment") {
        cat("\tverificationStatus:\tobject of class", paste0("<", class(self$verificationStatus)[1], ">"), "\n")
      }
      else if (typeof(self$verificationStatus) == "list") {
        cat("\tverificationStatus:\tlist of length", length(self$verificationStatus), "\n")
      }
      else {
        cat("\tverificationStatus:\t", self$verificationStatus, "\n")
      }
      if (typeof(self$rockType) == "environment") {
        cat("\trockType:\tobject of class", paste0("<", class(self$rockType)[1], ">"), "\n")
      }
      else if (typeof(self$rockType) == "list") {
        cat("\trockType:\tlist of length", length(self$rockType), "\n")
      }
      else {
        cat("\trockType:\t", self$rockType, "\n")
      }
      if (typeof(self$associatedFossilAssemblage) == "environment") {
        cat("\tassociatedFossilAssemblage:\tobject of class", paste0("<", class(self$associatedFossilAssemblage)[1], ">"), "\n")
      }
      else if (typeof(self$associatedFossilAssemblage) == "list") {
        cat("\tassociatedFossilAssemblage:\tlist of length", length(self$associatedFossilAssemblage), "\n")
      }
      else {
        cat("\tassociatedFossilAssemblage:\t", self$associatedFossilAssemblage, "\n")
      }
      if (typeof(self$rockMineralUsage) == "environment") {
        cat("\trockMineralUsage:\tobject of class", paste0("<", class(self$rockMineralUsage)[1], ">"), "\n")
      }
      else if (typeof(self$rockMineralUsage) == "list") {
        cat("\trockMineralUsage:\tlist of length", length(self$rockMineralUsage), "\n")
      }
      else {
        cat("\trockMineralUsage:\t", self$rockMineralUsage, "\n")
      }
      if (typeof(self$associatedMineralName) == "environment") {
        cat("\tassociatedMineralName:\tobject of class", paste0("<", class(self$associatedMineralName)[1], ">"), "\n")
      }
      else if (typeof(self$associatedMineralName) == "list") {
        cat("\tassociatedMineralName:\tlist of length", length(self$associatedMineralName), "\n")
      }
      else {
        cat("\tassociatedMineralName:\t", self$associatedMineralName, "\n")
      }
      if (typeof(self$remarks) == "environment") {
        cat("\tremarks:\tobject of class", paste0("<", class(self$remarks)[1], ">"), "\n")
      }
      else if (typeof(self$remarks) == "list") {
        cat("\tremarks:\tlist of length", length(self$remarks), "\n")
      }
      else {
        cat("\tremarks:\t", self$remarks, "\n")
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
