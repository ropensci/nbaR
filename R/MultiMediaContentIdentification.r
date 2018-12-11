# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiMediaContentIdentification Class
#'
#'
#'
#' @field taxonRank  character
#' @field scientificName  ScientificName
#' @field typeStatus  character
#' @field dateIdentified  character
#' @field defaultClassification  DefaultClassification
#' @field systemClassification  list(Monomial)
#' @field vernacularNames  list(VernacularName)
#' @field identificationQualifiers  list(character)
#' @field identifiers  list(Agent)
#' @field taxonomicEnrichments  list(TaxonomicEnrichment)
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
#'   Create MultiMediaContentIdentification object from list.
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
        self[["systemClassification"]] <- `systemClassification`
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
        self[["vernacularNames"]] <- `vernacularNames`
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
        self[["identificationQualifiers"]] <- `identificationQualifiers`
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
        self[["identifiers"]] <- `identifiers`
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
        self[["taxonomicEnrichments"]] <- `taxonomicEnrichments`
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
    }
  )
)
