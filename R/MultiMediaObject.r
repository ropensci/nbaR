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
#' # MultiMediaObject$new()
#'
#' @format
#' R6 class
#'
#' @title MultiMediaObject Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for MultiMediaObject objects. Naturalis stores a vast amount of multimedia in its internal document store. This can be multimedia captured from physical specimens (e.g. photos of a specimen), but also from human observations (e.g. audio recordings of bird sounds). Digitisation of Naturalis museum objects include a detailed photographic documentation. So far, there are more than 5 million photos and several houndreds of thousands of bird sounds.
#'
#'
#' @field sourceSystem  SourceSystem
#'
#' @field sourceSystemId  character
#'
#' @field recordURI  character
#'
#' @field id  character
#'
#' @field sourceInstitutionID  character
#'
#' @field sourceID  character
#'
#' @field owner  character
#'
#' @field licenseType  character
#'
#' @field license  character
#'
#' @field unitID  character
#'
#' @field collectionType  character
#'
#' @field title  character
#'
#' @field caption  character
#'
#' @field description  character
#'
#' @field serviceAccessPoints  list(ServiceAccessPoint)
#'
#' @field type  character
#'
#' @field taxonCount  integer
#'
#' @field creator  character
#'
#' @field copyrightText  character
#'
#' @field associatedSpecimenReference  character
#'
#' @field associatedTaxonReference  character
#'
#' @field multiMediaPublic  logical
#'
#' @field subjectParts  list(character)
#'
#' @field subjectOrientations  list(character)
#'
#' @field phasesOrStages  list(character)
#'
#' @field sexes  list(character)
#'
#' @field gatheringEvents  list(MultiMediaGatheringEvent)
#'
#' @field identifications  list(MultiMediaContentIdentification)
#'
#' @field theme  list(character)
#'
#' @field associatedSpecimen  Specimen
#'
#' @field associatedTaxon  Taxon
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor MultiMediaObject object.
#'
#' }
#' \item{\code{$fromList(MultiMediaObjectList)}}{
#'
#'   Create MultiMediaObject object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of MultiMediaObject.
#'
#' }
#' \item{\code{fromJSONString(MultiMediaObjectJson)}}{
#'
#'   Create MultiMediaObject object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of MultiMediaObject.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiMediaObject <- R6::R6Class(
  "MultiMediaObject",
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `sourceInstitutionID` = NULL,
    `sourceID` = NULL,
    `owner` = NULL,
    `licenseType` = NULL,
    `license` = NULL,
    `unitID` = NULL,
    `collectionType` = NULL,
    `title` = NULL,
    `caption` = NULL,
    `description` = NULL,
    `serviceAccessPoints` = NULL,
    `type` = NULL,
    `taxonCount` = NULL,
    `creator` = NULL,
    `copyrightText` = NULL,
    `associatedSpecimenReference` = NULL,
    `associatedTaxonReference` = NULL,
    `multiMediaPublic` = NULL,
    `subjectParts` = NULL,
    `subjectOrientations` = NULL,
    `phasesOrStages` = NULL,
    `sexes` = NULL,
    `gatheringEvents` = NULL,
    `identifications` = NULL,
    `theme` = NULL,
    `associatedSpecimen` = NULL,
    `associatedTaxon` = NULL,
    initialize = function(
                              `sourceSystem`,
                              `sourceSystemId`,
                              `recordURI`,
                              `id`,
                              `sourceInstitutionID`,
                              `sourceID`,
                              `owner`,
                              `licenseType`,
                              `license`,
                              `unitID`,
                              `collectionType`,
                              `title`,
                              `caption`,
                              `description`,
                              `serviceAccessPoints`,
                              `type`,
                              `taxonCount`,
                              `creator`,
                              `copyrightText`,
                              `associatedSpecimenReference`,
                              `associatedTaxonReference`,
                              `multiMediaPublic`,
                              `subjectParts`,
                              `subjectOrientations`,
                              `phasesOrStages`,
                              `sexes`,
                              `gatheringEvents`,
                              `identifications`,
                              `theme`,
                              `associatedSpecimen`,
                              `associatedTaxon`) {
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[["sourceSystem"]] <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(
          is.character(`sourceSystemId`),
          length(`sourceSystemId`) == 1
        )
        self[["sourceSystemId"]] <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(
          is.character(`recordURI`),
          length(`recordURI`) == 1
        )
        self[["recordURI"]] <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(
          is.character(`id`),
          length(`id`) == 1
        )
        self[["id"]] <- `id`
      }
      if (!missing(`sourceInstitutionID`)) {
        stopifnot(
          is.character(`sourceInstitutionID`),
          length(`sourceInstitutionID`) == 1
        )
        self[["sourceInstitutionID"]] <- `sourceInstitutionID`
      }
      if (!missing(`sourceID`)) {
        stopifnot(
          is.character(`sourceID`),
          length(`sourceID`) == 1
        )
        self[["sourceID"]] <- `sourceID`
      }
      if (!missing(`owner`)) {
        stopifnot(
          is.character(`owner`),
          length(`owner`) == 1
        )
        self[["owner"]] <- `owner`
      }
      if (!missing(`licenseType`)) {
        stopifnot(
          is.character(`licenseType`),
          length(`licenseType`) == 1
        )
        self[["licenseType"]] <- `licenseType`
      }
      if (!missing(`license`)) {
        stopifnot(
          is.character(`license`),
          length(`license`) == 1
        )
        self[["license"]] <- `license`
      }
      if (!missing(`unitID`)) {
        stopifnot(
          is.character(`unitID`),
          length(`unitID`) == 1
        )
        self[["unitID"]] <- `unitID`
      }
      if (!missing(`collectionType`)) {
        stopifnot(
          is.character(`collectionType`),
          length(`collectionType`) == 1
        )
        self[["collectionType"]] <- `collectionType`
      }
      if (!missing(`title`)) {
        stopifnot(
          is.character(`title`),
          length(`title`) == 1
        )
        self[["title"]] <- `title`
      }
      if (!missing(`caption`)) {
        stopifnot(
          is.character(`caption`),
          length(`caption`) == 1
        )
        self[["caption"]] <- `caption`
      }
      if (!missing(`description`)) {
        stopifnot(
          is.character(`description`),
          length(`description`) == 1
        )
        self[["description"]] <- `description`
      }
      if (!missing(`serviceAccessPoints`)) {
        stopifnot(
          is.list(`serviceAccessPoints`),
          length(`serviceAccessPoints`) != 0
        )
        lapply(
          `serviceAccessPoints`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["serviceAccessPoints"]] <- unname(`serviceAccessPoints`)
      }
      if (!missing(`type`)) {
        stopifnot(
          is.character(`type`),
          length(`type`) == 1
        )
        self[["type"]] <- `type`
      }
      if (!missing(`taxonCount`)) {
        stopifnot(
          is.numeric(`taxonCount`),
          length(`taxonCount`) == 1
        )
        self[["taxonCount"]] <- `taxonCount`
      }
      if (!missing(`creator`)) {
        stopifnot(
          is.character(`creator`),
          length(`creator`) == 1
        )
        self[["creator"]] <- `creator`
      }
      if (!missing(`copyrightText`)) {
        stopifnot(
          is.character(`copyrightText`),
          length(`copyrightText`) == 1
        )
        self[["copyrightText"]] <- `copyrightText`
      }
      if (!missing(`associatedSpecimenReference`)) {
        stopifnot(
          is.character(`associatedSpecimenReference`),
          length(`associatedSpecimenReference`) == 1
        )
        self[["associatedSpecimenReference"]] <- `associatedSpecimenReference`
      }
      if (!missing(`associatedTaxonReference`)) {
        stopifnot(
          is.character(`associatedTaxonReference`),
          length(`associatedTaxonReference`) == 1
        )
        self[["associatedTaxonReference"]] <- `associatedTaxonReference`
      }
      if (!missing(`multiMediaPublic`)) {
        self[["multiMediaPublic"]] <- `multiMediaPublic`
      }
      if (!missing(`subjectParts`)) {
        stopifnot(
          is.list(`subjectParts`),
          length(`subjectParts`) != 0
        )
        lapply(
          `subjectParts`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["subjectParts"]] <- unname(`subjectParts`)
      }
      if (!missing(`subjectOrientations`)) {
        stopifnot(
          is.list(`subjectOrientations`),
          length(`subjectOrientations`) != 0
        )
        lapply(
          `subjectOrientations`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["subjectOrientations"]] <- unname(`subjectOrientations`)
      }
      if (!missing(`phasesOrStages`)) {
        stopifnot(
          is.list(`phasesOrStages`),
          length(`phasesOrStages`) != 0
        )
        lapply(
          `phasesOrStages`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["phasesOrStages"]] <- unname(`phasesOrStages`)
      }
      if (!missing(`sexes`)) {
        stopifnot(
          is.list(`sexes`),
          length(`sexes`) != 0
        )
        lapply(
          `sexes`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["sexes"]] <- unname(`sexes`)
      }
      if (!missing(`gatheringEvents`)) {
        stopifnot(
          is.list(`gatheringEvents`),
          length(`gatheringEvents`) != 0
        )
        lapply(
          `gatheringEvents`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringEvents"]] <- unname(`gatheringEvents`)
      }
      if (!missing(`identifications`)) {
        stopifnot(
          is.list(`identifications`),
          length(`identifications`) != 0
        )
        lapply(
          `identifications`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["identifications"]] <- unname(`identifications`)
      }
      if (!missing(`theme`)) {
        stopifnot(
          is.list(`theme`),
          length(`theme`) != 0
        )
        lapply(
          `theme`,
          function(x) stopifnot(is.character(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["theme"]] <- unname(`theme`)
      }
      if (!missing(`associatedSpecimen`)) {
        stopifnot(R6::is.R6(`associatedSpecimen`))
        self[["associatedSpecimen"]] <- `associatedSpecimen`
      }
      if (!missing(`associatedTaxon`)) {
        stopifnot(R6::is.R6(`associatedTaxon`))
        self[["associatedTaxon"]] <- `associatedTaxon`
      }
    },
    toList = function() {
      MultiMediaObjectList <- list()
      if (!is.null(self[["sourceSystem"]])) {
        MultiMediaObjectList[["sourceSystem"]] <-
          self[["sourceSystem"]]$toList()
      }
      if (!is.null(self[["sourceSystemId"]])) {
        MultiMediaObjectList[["sourceSystemId"]] <-
          self[["sourceSystemId"]]
      }
      if (!is.null(self[["recordURI"]])) {
        MultiMediaObjectList[["recordURI"]] <-
          self[["recordURI"]]
      }
      if (!is.null(self[["id"]])) {
        MultiMediaObjectList[["id"]] <-
          self[["id"]]
      }
      if (!is.null(self[["sourceInstitutionID"]])) {
        MultiMediaObjectList[["sourceInstitutionID"]] <-
          self[["sourceInstitutionID"]]
      }
      if (!is.null(self[["sourceID"]])) {
        MultiMediaObjectList[["sourceID"]] <-
          self[["sourceID"]]
      }
      if (!is.null(self[["owner"]])) {
        MultiMediaObjectList[["owner"]] <-
          self[["owner"]]
      }
      if (!is.null(self[["licenseType"]])) {
        MultiMediaObjectList[["licenseType"]] <-
          self[["licenseType"]]
      }
      if (!is.null(self[["license"]])) {
        MultiMediaObjectList[["license"]] <-
          self[["license"]]
      }
      if (!is.null(self[["unitID"]])) {
        MultiMediaObjectList[["unitID"]] <-
          self[["unitID"]]
      }
      if (!is.null(self[["collectionType"]])) {
        MultiMediaObjectList[["collectionType"]] <-
          self[["collectionType"]]
      }
      if (!is.null(self[["title"]])) {
        MultiMediaObjectList[["title"]] <-
          self[["title"]]
      }
      if (!is.null(self[["caption"]])) {
        MultiMediaObjectList[["caption"]] <-
          self[["caption"]]
      }
      if (!is.null(self[["description"]])) {
        MultiMediaObjectList[["description"]] <-
          self[["description"]]
      }
      if (!is.null(self[["serviceAccessPoints"]])) {
        MultiMediaObjectList[["serviceAccessPoints"]] <-
          lapply(self[["serviceAccessPoints"]], function(x) x$toList())
      }
      if (!is.null(self[["type"]])) {
        MultiMediaObjectList[["type"]] <-
          self[["type"]]
      }
      if (!is.null(self[["taxonCount"]])) {
        MultiMediaObjectList[["taxonCount"]] <-
          self[["taxonCount"]]
      }
      if (!is.null(self[["creator"]])) {
        MultiMediaObjectList[["creator"]] <-
          self[["creator"]]
      }
      if (!is.null(self[["copyrightText"]])) {
        MultiMediaObjectList[["copyrightText"]] <-
          self[["copyrightText"]]
      }
      if (!is.null(self[["associatedSpecimenReference"]])) {
        MultiMediaObjectList[["associatedSpecimenReference"]] <-
          self[["associatedSpecimenReference"]]
      }
      if (!is.null(self[["associatedTaxonReference"]])) {
        MultiMediaObjectList[["associatedTaxonReference"]] <-
          self[["associatedTaxonReference"]]
      }
      if (!is.null(self[["multiMediaPublic"]])) {
        MultiMediaObjectList[["multiMediaPublic"]] <-
          self[["multiMediaPublic"]]
      }
      if (!is.null(self[["subjectParts"]])) {
        MultiMediaObjectList[["subjectParts"]] <-
          self[["subjectParts"]]
      }
      if (!is.null(self[["subjectOrientations"]])) {
        MultiMediaObjectList[["subjectOrientations"]] <-
          self[["subjectOrientations"]]
      }
      if (!is.null(self[["phasesOrStages"]])) {
        MultiMediaObjectList[["phasesOrStages"]] <-
          self[["phasesOrStages"]]
      }
      if (!is.null(self[["sexes"]])) {
        MultiMediaObjectList[["sexes"]] <-
          self[["sexes"]]
      }
      if (!is.null(self[["gatheringEvents"]])) {
        MultiMediaObjectList[["gatheringEvents"]] <-
          lapply(self[["gatheringEvents"]], function(x) x$toList())
      }
      if (!is.null(self[["identifications"]])) {
        MultiMediaObjectList[["identifications"]] <-
          lapply(self[["identifications"]], function(x) x$toList())
      }
      if (!is.null(self[["theme"]])) {
        MultiMediaObjectList[["theme"]] <-
          self[["theme"]]
      }
      if (!is.null(self[["associatedSpecimen"]])) {
        MultiMediaObjectList[["associatedSpecimen"]] <-
          self[["associatedSpecimen"]]$toList()
      }
      if (!is.null(self[["associatedTaxon"]])) {
        MultiMediaObjectList[["associatedTaxon"]] <-
          self[["associatedTaxon"]]$toList()
      }
      ## omit empty nested lists in returned list
      MultiMediaObjectList[vapply(
        MultiMediaObjectList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(MultiMediaObjectList,
                            typeMapping = NULL) {
      self[["sourceSystem"]] <- SourceSystem$new()$fromList(
        MultiMediaObjectList[["sourceSystem"]],
        typeMapping = typeMapping
      )
      self[["sourceSystemId"]] <-
        MultiMediaObjectList[["sourceSystemId"]]
      self[["recordURI"]] <-
        MultiMediaObjectList[["recordURI"]]
      self[["id"]] <-
        MultiMediaObjectList[["id"]]
      self[["sourceInstitutionID"]] <-
        MultiMediaObjectList[["sourceInstitutionID"]]
      self[["sourceID"]] <-
        MultiMediaObjectList[["sourceID"]]
      self[["owner"]] <-
        MultiMediaObjectList[["owner"]]
      self[["licenseType"]] <-
        MultiMediaObjectList[["licenseType"]]
      self[["license"]] <-
        MultiMediaObjectList[["license"]]
      self[["unitID"]] <-
        MultiMediaObjectList[["unitID"]]
      self[["collectionType"]] <-
        MultiMediaObjectList[["collectionType"]]
      self[["title"]] <-
        MultiMediaObjectList[["title"]]
      self[["caption"]] <-
        MultiMediaObjectList[["caption"]]
      self[["description"]] <-
        MultiMediaObjectList[["description"]]
      self[["serviceAccessPoints"]] <- lapply(
        MultiMediaObjectList[["serviceAccessPoints"]],
        function(x) {
          ServiceAccessPoint$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["type"]] <-
        MultiMediaObjectList[["type"]]
      self[["taxonCount"]] <-
        MultiMediaObjectList[["taxonCount"]]
      self[["creator"]] <-
        MultiMediaObjectList[["creator"]]
      self[["copyrightText"]] <-
        MultiMediaObjectList[["copyrightText"]]
      self[["associatedSpecimenReference"]] <-
        MultiMediaObjectList[["associatedSpecimenReference"]]
      self[["associatedTaxonReference"]] <-
        MultiMediaObjectList[["associatedTaxonReference"]]
      self[["multiMediaPublic"]] <-
        MultiMediaObjectList[["multiMediaPublic"]]
      self[["subjectParts"]] <-
        MultiMediaObjectList[["subjectParts"]]
      self[["subjectOrientations"]] <-
        MultiMediaObjectList[["subjectOrientations"]]
      self[["phasesOrStages"]] <-
        MultiMediaObjectList[["phasesOrStages"]]
      self[["sexes"]] <-
        MultiMediaObjectList[["sexes"]]
      self[["gatheringEvents"]] <- lapply(
        MultiMediaObjectList[["gatheringEvents"]],
        function(x) {
          MultiMediaGatheringEvent$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["identifications"]] <- lapply(
        MultiMediaObjectList[["identifications"]],
        function(x) {
          MultiMediaContentIdentification$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["theme"]] <-
        MultiMediaObjectList[["theme"]]
      self[["associatedSpecimen"]] <- Specimen$new()$fromList(
        MultiMediaObjectList[["associatedSpecimen"]],
        typeMapping = typeMapping
      )
      self[["associatedTaxon"]] <- Taxon$new()$fromList(
        MultiMediaObjectList[["associatedTaxon"]],
        typeMapping = typeMapping
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
    fromJSONString = function(MultiMediaObjectJson,
                                  typeMapping = NULL) {
      MultiMediaObjectList <- jsonlite::fromJSON(
        MultiMediaObjectJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(MultiMediaObjectList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<MultiMediaObject>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$sourceSystem) == "environment") {
        cat("\tsourceSystem:\tobject of class", paste0("<", class(self$sourceSystem)[1], ">"), "\n")
      }
      else if (typeof(self$sourceSystem) == "list") {
        cat("\tsourceSystem:\tlist of length", length(self$sourceSystem), "\n")
      }
      else {
        cat("\tsourceSystem:\t", self$sourceSystem, "\n")
      }
      if (typeof(self$sourceSystemId) == "environment") {
        cat("\tsourceSystemId:\tobject of class", paste0("<", class(self$sourceSystemId)[1], ">"), "\n")
      }
      else if (typeof(self$sourceSystemId) == "list") {
        cat("\tsourceSystemId:\tlist of length", length(self$sourceSystemId), "\n")
      }
      else {
        cat("\tsourceSystemId:\t", self$sourceSystemId, "\n")
      }
      if (typeof(self$recordURI) == "environment") {
        cat("\trecordURI:\tobject of class", paste0("<", class(self$recordURI)[1], ">"), "\n")
      }
      else if (typeof(self$recordURI) == "list") {
        cat("\trecordURI:\tlist of length", length(self$recordURI), "\n")
      }
      else {
        cat("\trecordURI:\t", self$recordURI, "\n")
      }
      if (typeof(self$id) == "environment") {
        cat("\tid:\tobject of class", paste0("<", class(self$id)[1], ">"), "\n")
      }
      else if (typeof(self$id) == "list") {
        cat("\tid:\tlist of length", length(self$id), "\n")
      }
      else {
        cat("\tid:\t", self$id, "\n")
      }
      if (typeof(self$sourceInstitutionID) == "environment") {
        cat("\tsourceInstitutionID:\tobject of class", paste0("<", class(self$sourceInstitutionID)[1], ">"), "\n")
      }
      else if (typeof(self$sourceInstitutionID) == "list") {
        cat("\tsourceInstitutionID:\tlist of length", length(self$sourceInstitutionID), "\n")
      }
      else {
        cat("\tsourceInstitutionID:\t", self$sourceInstitutionID, "\n")
      }
      if (typeof(self$sourceID) == "environment") {
        cat("\tsourceID:\tobject of class", paste0("<", class(self$sourceID)[1], ">"), "\n")
      }
      else if (typeof(self$sourceID) == "list") {
        cat("\tsourceID:\tlist of length", length(self$sourceID), "\n")
      }
      else {
        cat("\tsourceID:\t", self$sourceID, "\n")
      }
      if (typeof(self$owner) == "environment") {
        cat("\towner:\tobject of class", paste0("<", class(self$owner)[1], ">"), "\n")
      }
      else if (typeof(self$owner) == "list") {
        cat("\towner:\tlist of length", length(self$owner), "\n")
      }
      else {
        cat("\towner:\t", self$owner, "\n")
      }
      if (typeof(self$licenseType) == "environment") {
        cat("\tlicenseType:\tobject of class", paste0("<", class(self$licenseType)[1], ">"), "\n")
      }
      else if (typeof(self$licenseType) == "list") {
        cat("\tlicenseType:\tlist of length", length(self$licenseType), "\n")
      }
      else {
        cat("\tlicenseType:\t", self$licenseType, "\n")
      }
      if (typeof(self$license) == "environment") {
        cat("\tlicense:\tobject of class", paste0("<", class(self$license)[1], ">"), "\n")
      }
      else if (typeof(self$license) == "list") {
        cat("\tlicense:\tlist of length", length(self$license), "\n")
      }
      else {
        cat("\tlicense:\t", self$license, "\n")
      }
      if (typeof(self$unitID) == "environment") {
        cat("\tunitID:\tobject of class", paste0("<", class(self$unitID)[1], ">"), "\n")
      }
      else if (typeof(self$unitID) == "list") {
        cat("\tunitID:\tlist of length", length(self$unitID), "\n")
      }
      else {
        cat("\tunitID:\t", self$unitID, "\n")
      }
      if (typeof(self$collectionType) == "environment") {
        cat("\tcollectionType:\tobject of class", paste0("<", class(self$collectionType)[1], ">"), "\n")
      }
      else if (typeof(self$collectionType) == "list") {
        cat("\tcollectionType:\tlist of length", length(self$collectionType), "\n")
      }
      else {
        cat("\tcollectionType:\t", self$collectionType, "\n")
      }
      if (typeof(self$title) == "environment") {
        cat("\ttitle:\tobject of class", paste0("<", class(self$title)[1], ">"), "\n")
      }
      else if (typeof(self$title) == "list") {
        cat("\ttitle:\tlist of length", length(self$title), "\n")
      }
      else {
        cat("\ttitle:\t", self$title, "\n")
      }
      if (typeof(self$caption) == "environment") {
        cat("\tcaption:\tobject of class", paste0("<", class(self$caption)[1], ">"), "\n")
      }
      else if (typeof(self$caption) == "list") {
        cat("\tcaption:\tlist of length", length(self$caption), "\n")
      }
      else {
        cat("\tcaption:\t", self$caption, "\n")
      }
      if (typeof(self$description) == "environment") {
        cat("\tdescription:\tobject of class", paste0("<", class(self$description)[1], ">"), "\n")
      }
      else if (typeof(self$description) == "list") {
        cat("\tdescription:\tlist of length", length(self$description), "\n")
      }
      else {
        cat("\tdescription:\t", self$description, "\n")
      }
      if (typeof(self$serviceAccessPoints) == "environment") {
        cat("\tserviceAccessPoints:\tobject of class", paste0("<", class(self$serviceAccessPoints)[1], ">"), "\n")
      }
      else if (typeof(self$serviceAccessPoints) == "list") {
        cat("\tserviceAccessPoints:\tlist of length", length(self$serviceAccessPoints), "\n")
      }
      else {
        cat("\tserviceAccessPoints:\t", self$serviceAccessPoints, "\n")
      }
      if (typeof(self$type) == "environment") {
        cat("\ttype:\tobject of class", paste0("<", class(self$type)[1], ">"), "\n")
      }
      else if (typeof(self$type) == "list") {
        cat("\ttype:\tlist of length", length(self$type), "\n")
      }
      else {
        cat("\ttype:\t", self$type, "\n")
      }
      if (typeof(self$taxonCount) == "environment") {
        cat("\ttaxonCount:\tobject of class", paste0("<", class(self$taxonCount)[1], ">"), "\n")
      }
      else if (typeof(self$taxonCount) == "list") {
        cat("\ttaxonCount:\tlist of length", length(self$taxonCount), "\n")
      }
      else {
        cat("\ttaxonCount:\t", self$taxonCount, "\n")
      }
      if (typeof(self$creator) == "environment") {
        cat("\tcreator:\tobject of class", paste0("<", class(self$creator)[1], ">"), "\n")
      }
      else if (typeof(self$creator) == "list") {
        cat("\tcreator:\tlist of length", length(self$creator), "\n")
      }
      else {
        cat("\tcreator:\t", self$creator, "\n")
      }
      if (typeof(self$copyrightText) == "environment") {
        cat("\tcopyrightText:\tobject of class", paste0("<", class(self$copyrightText)[1], ">"), "\n")
      }
      else if (typeof(self$copyrightText) == "list") {
        cat("\tcopyrightText:\tlist of length", length(self$copyrightText), "\n")
      }
      else {
        cat("\tcopyrightText:\t", self$copyrightText, "\n")
      }
      if (typeof(self$associatedSpecimenReference) == "environment") {
        cat("\tassociatedSpecimenReference:\tobject of class", paste0("<", class(self$associatedSpecimenReference)[1], ">"), "\n")
      }
      else if (typeof(self$associatedSpecimenReference) == "list") {
        cat("\tassociatedSpecimenReference:\tlist of length", length(self$associatedSpecimenReference), "\n")
      }
      else {
        cat("\tassociatedSpecimenReference:\t", self$associatedSpecimenReference, "\n")
      }
      if (typeof(self$associatedTaxonReference) == "environment") {
        cat("\tassociatedTaxonReference:\tobject of class", paste0("<", class(self$associatedTaxonReference)[1], ">"), "\n")
      }
      else if (typeof(self$associatedTaxonReference) == "list") {
        cat("\tassociatedTaxonReference:\tlist of length", length(self$associatedTaxonReference), "\n")
      }
      else {
        cat("\tassociatedTaxonReference:\t", self$associatedTaxonReference, "\n")
      }
      if (typeof(self$multiMediaPublic) == "environment") {
        cat("\tmultiMediaPublic:\tobject of class", paste0("<", class(self$multiMediaPublic)[1], ">"), "\n")
      }
      else if (typeof(self$multiMediaPublic) == "list") {
        cat("\tmultiMediaPublic:\tlist of length", length(self$multiMediaPublic), "\n")
      }
      else {
        cat("\tmultiMediaPublic:\t", self$multiMediaPublic, "\n")
      }
      if (typeof(self$subjectParts) == "environment") {
        cat("\tsubjectParts:\tobject of class", paste0("<", class(self$subjectParts)[1], ">"), "\n")
      }
      else if (typeof(self$subjectParts) == "list") {
        cat("\tsubjectParts:\tlist of length", length(self$subjectParts), "\n")
      }
      else {
        cat("\tsubjectParts:\t", self$subjectParts, "\n")
      }
      if (typeof(self$subjectOrientations) == "environment") {
        cat("\tsubjectOrientations:\tobject of class", paste0("<", class(self$subjectOrientations)[1], ">"), "\n")
      }
      else if (typeof(self$subjectOrientations) == "list") {
        cat("\tsubjectOrientations:\tlist of length", length(self$subjectOrientations), "\n")
      }
      else {
        cat("\tsubjectOrientations:\t", self$subjectOrientations, "\n")
      }
      if (typeof(self$phasesOrStages) == "environment") {
        cat("\tphasesOrStages:\tobject of class", paste0("<", class(self$phasesOrStages)[1], ">"), "\n")
      }
      else if (typeof(self$phasesOrStages) == "list") {
        cat("\tphasesOrStages:\tlist of length", length(self$phasesOrStages), "\n")
      }
      else {
        cat("\tphasesOrStages:\t", self$phasesOrStages, "\n")
      }
      if (typeof(self$sexes) == "environment") {
        cat("\tsexes:\tobject of class", paste0("<", class(self$sexes)[1], ">"), "\n")
      }
      else if (typeof(self$sexes) == "list") {
        cat("\tsexes:\tlist of length", length(self$sexes), "\n")
      }
      else {
        cat("\tsexes:\t", self$sexes, "\n")
      }
      if (typeof(self$gatheringEvents) == "environment") {
        cat("\tgatheringEvents:\tobject of class", paste0("<", class(self$gatheringEvents)[1], ">"), "\n")
      }
      else if (typeof(self$gatheringEvents) == "list") {
        cat("\tgatheringEvents:\tlist of length", length(self$gatheringEvents), "\n")
      }
      else {
        cat("\tgatheringEvents:\t", self$gatheringEvents, "\n")
      }
      if (typeof(self$identifications) == "environment") {
        cat("\tidentifications:\tobject of class", paste0("<", class(self$identifications)[1], ">"), "\n")
      }
      else if (typeof(self$identifications) == "list") {
        cat("\tidentifications:\tlist of length", length(self$identifications), "\n")
      }
      else {
        cat("\tidentifications:\t", self$identifications, "\n")
      }
      if (typeof(self$theme) == "environment") {
        cat("\ttheme:\tobject of class", paste0("<", class(self$theme)[1], ">"), "\n")
      }
      else if (typeof(self$theme) == "list") {
        cat("\ttheme:\tlist of length", length(self$theme), "\n")
      }
      else {
        cat("\ttheme:\t", self$theme, "\n")
      }
      if (typeof(self$associatedSpecimen) == "environment") {
        cat("\tassociatedSpecimen:\tobject of class", paste0("<", class(self$associatedSpecimen)[1], ">"), "\n")
      }
      else if (typeof(self$associatedSpecimen) == "list") {
        cat("\tassociatedSpecimen:\tlist of length", length(self$associatedSpecimen), "\n")
      }
      else {
        cat("\tassociatedSpecimen:\t", self$associatedSpecimen, "\n")
      }
      if (typeof(self$associatedTaxon) == "environment") {
        cat("\tassociatedTaxon:\tobject of class", paste0("<", class(self$associatedTaxon)[1], ">"), "\n")
      }
      else if (typeof(self$associatedTaxon) == "list") {
        cat("\tassociatedTaxon:\tlist of length", length(self$associatedTaxon), "\n")
      }
      else {
        cat("\tassociatedTaxon:\t", self$associatedTaxon, "\n")
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
