# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeoArea Class
#'
#'
#'
#' @field sourceSystem  SourceSystem
#' @field sourceSystemId  character
#' @field recordURI  character
#' @field id  character
#' @field areaType  character
#' @field locality  character
#' @field shape  list
#' @field source  character
#' @field isoCode  character
#' @field countryNL  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GeoArea object.
#'
#' }
#' \item{\code{$fromList(GeoAreaList)}}{
#'
#'   Create GeoArea object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GeoArea.
#'
#' }
#' \item{\code{fromJSONString(GeoAreaJson)}}{
#'
#'   Create GeoArea object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GeoArea.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoArea <- R6::R6Class(
  "GeoArea",
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `areaType` = NULL,
    `locality` = NULL,
    `shape` = NULL,
    `source` = NULL,
    `isoCode` = NULL,
    `countryNL` = NULL,
    initialize = function(
                              `sourceSystem`,
                              `sourceSystemId`,
                              `recordURI`,
                              `id`,
                              `areaType`,
                              `locality`,
                              `shape`,
                              `source`,
                              `isoCode`,
                              `countryNL`) {
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
      if (!missing(`areaType`)) {
        stopifnot(
          is.character(`areaType`),
          length(`areaType`) == 1
        )
        self[["areaType"]] <- `areaType`
      }
      if (!missing(`locality`)) {
        stopifnot(
          is.character(`locality`),
          length(`locality`) == 1
        )
        self[["locality"]] <- `locality`
      }
      if (!missing(`shape`)) {
        self[["shape"]] <- `shape`
      }
      if (!missing(`source`)) {
        stopifnot(
          is.character(`source`),
          length(`source`) == 1
        )
        self[["source"]] <- `source`
      }
      if (!missing(`isoCode`)) {
        stopifnot(
          is.character(`isoCode`),
          length(`isoCode`) == 1
        )
        self[["isoCode"]] <- `isoCode`
      }
      if (!missing(`countryNL`)) {
        stopifnot(
          is.character(`countryNL`),
          length(`countryNL`) == 1
        )
        self[["countryNL"]] <- `countryNL`
      }
    },
    toList = function() {
      GeoAreaList <- list()
      if (!is.null(self[["sourceSystem"]])) {
        GeoAreaList[["sourceSystem"]] <-
          self[["sourceSystem"]]$toList()
      }
      if (!is.null(self[["sourceSystemId"]])) {
        GeoAreaList[["sourceSystemId"]] <-
          self[["sourceSystemId"]]
      }
      if (!is.null(self[["recordURI"]])) {
        GeoAreaList[["recordURI"]] <-
          self[["recordURI"]]
      }
      if (!is.null(self[["id"]])) {
        GeoAreaList[["id"]] <-
          self[["id"]]
      }
      if (!is.null(self[["areaType"]])) {
        GeoAreaList[["areaType"]] <-
          self[["areaType"]]
      }
      if (!is.null(self[["locality"]])) {
        GeoAreaList[["locality"]] <-
          self[["locality"]]
      }
      if (!is.null(self[["shape"]])) {
        GeoAreaList[["shape"]] <-
          self[["shape"]]
      }
      if (!is.null(self[["source"]])) {
        GeoAreaList[["source"]] <-
          self[["source"]]
      }
      if (!is.null(self[["isoCode"]])) {
        GeoAreaList[["isoCode"]] <-
          self[["isoCode"]]
      }
      if (!is.null(self[["countryNL"]])) {
        GeoAreaList[["countryNL"]] <-
          self[["countryNL"]]
      }
      ## omit empty nested lists in returned list
      GeoAreaList[vapply(
        GeoAreaList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GeoAreaList,
                            typeMapping = NULL) {
      self[["sourceSystem"]] <- SourceSystem$new()$fromList(
        GeoAreaList[["sourceSystem"]],
        typeMapping = typeMapping
      )
      self[["sourceSystemId"]] <-
        GeoAreaList[["sourceSystemId"]]
      self[["recordURI"]] <-
        GeoAreaList[["recordURI"]]
      self[["id"]] <-
        GeoAreaList[["id"]]
      self[["areaType"]] <-
        GeoAreaList[["areaType"]]
      self[["locality"]] <-
        GeoAreaList[["locality"]]
      self[["shape"]] <-
        GeoAreaList[["shape"]]
      self[["source"]] <-
        GeoAreaList[["source"]]
      self[["isoCode"]] <-
        GeoAreaList[["isoCode"]]
      self[["countryNL"]] <-
        GeoAreaList[["countryNL"]]
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
    fromJSONString = function(GeoAreaJson,
                                  typeMapping = NULL) {
      GeoAreaList <- jsonlite::fromJSON(
        GeoAreaJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(GeoAreaList)
      invisible(self)
    }
  )
)
