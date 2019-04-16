# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiMediaGatheringEvent Class
#'
#'
#'
#' @field projectTitle  character
#'
#' @field worldRegion  character
#'
#' @field continent  character
#'
#' @field country  character
#'
#' @field iso3166Code  character
#'
#' @field provinceState  character
#'
#' @field island  character
#'
#' @field locality  character
#'
#' @field city  character
#'
#' @field sublocality  character
#'
#' @field localityText  character
#'
#' @field dateTimeBegin  character
#'
#' @field dateTimeEnd  character
#'
#' @field method  character
#'
#' @field altitude  character
#'
#' @field altitudeUnifOfMeasurement  character
#'
#' @field biotopeText  character
#'
#' @field depth  character
#'
#' @field depthUnitOfMeasurement  character
#'
#' @field gatheringPersons  list(Person)
#'
#' @field gatheringOrganizations  list(Organization)
#'
#' @field siteCoordinates  list(GatheringSiteCoordinates)
#'
#' @field namedAreas  list(NamedArea)
#'
#' @field associatedTaxa  list(AssociatedTaxon)
#'
#' @field chronoStratigraphy  list(ChronoStratigraphy)
#'
#' @field lithoStratigraphy  list(LithoStratigraphy)
#'
#' @field iptc  Iptc4xmpExt
#'
#' @field bioStratigraphic  list(BioStratigraphy)
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
#'   Constructor MultiMediaGatheringEvent object.
#'
#' }
#' \item{\code{$fromList(MultiMediaGatheringEventList)}}{
#'
#'   Create MultiMediaGatheringEvent object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of MultiMediaGatheringEvent.
#'
#' }
#' \item{\code{fromJSONString(MultiMediaGatheringEventJson)}}{
#'
#'   Create MultiMediaGatheringEvent object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of MultiMediaGatheringEvent.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiMediaGatheringEvent <- R6::R6Class(
  "MultiMediaGatheringEvent",
  public = list(
    `projectTitle` = NULL,
    `worldRegion` = NULL,
    `continent` = NULL,
    `country` = NULL,
    `iso3166Code` = NULL,
    `provinceState` = NULL,
    `island` = NULL,
    `locality` = NULL,
    `city` = NULL,
    `sublocality` = NULL,
    `localityText` = NULL,
    `dateTimeBegin` = NULL,
    `dateTimeEnd` = NULL,
    `method` = NULL,
    `altitude` = NULL,
    `altitudeUnifOfMeasurement` = NULL,
    `biotopeText` = NULL,
    `depth` = NULL,
    `depthUnitOfMeasurement` = NULL,
    `gatheringPersons` = NULL,
    `gatheringOrganizations` = NULL,
    `siteCoordinates` = NULL,
    `namedAreas` = NULL,
    `associatedTaxa` = NULL,
    `chronoStratigraphy` = NULL,
    `lithoStratigraphy` = NULL,
    `iptc` = NULL,
    `bioStratigraphic` = NULL,
    initialize = function(
                              `projectTitle`,
                              `worldRegion`,
                              `continent`,
                              `country`,
                              `iso3166Code`,
                              `provinceState`,
                              `island`,
                              `locality`,
                              `city`,
                              `sublocality`,
                              `localityText`,
                              `dateTimeBegin`,
                              `dateTimeEnd`,
                              `method`,
                              `altitude`,
                              `altitudeUnifOfMeasurement`,
                              `biotopeText`,
                              `depth`,
                              `depthUnitOfMeasurement`,
                              `gatheringPersons`,
                              `gatheringOrganizations`,
                              `siteCoordinates`,
                              `namedAreas`,
                              `associatedTaxa`,
                              `chronoStratigraphy`,
                              `lithoStratigraphy`,
                              `iptc`,
                              `bioStratigraphic`) {
      if (!missing(`projectTitle`)) {
        stopifnot(
          is.character(`projectTitle`),
          length(`projectTitle`) == 1
        )
        self[["projectTitle"]] <- `projectTitle`
      }
      if (!missing(`worldRegion`)) {
        stopifnot(
          is.character(`worldRegion`),
          length(`worldRegion`) == 1
        )
        self[["worldRegion"]] <- `worldRegion`
      }
      if (!missing(`continent`)) {
        stopifnot(
          is.character(`continent`),
          length(`continent`) == 1
        )
        self[["continent"]] <- `continent`
      }
      if (!missing(`country`)) {
        stopifnot(
          is.character(`country`),
          length(`country`) == 1
        )
        self[["country"]] <- `country`
      }
      if (!missing(`iso3166Code`)) {
        stopifnot(
          is.character(`iso3166Code`),
          length(`iso3166Code`) == 1
        )
        self[["iso3166Code"]] <- `iso3166Code`
      }
      if (!missing(`provinceState`)) {
        stopifnot(
          is.character(`provinceState`),
          length(`provinceState`) == 1
        )
        self[["provinceState"]] <- `provinceState`
      }
      if (!missing(`island`)) {
        stopifnot(
          is.character(`island`),
          length(`island`) == 1
        )
        self[["island"]] <- `island`
      }
      if (!missing(`locality`)) {
        stopifnot(
          is.character(`locality`),
          length(`locality`) == 1
        )
        self[["locality"]] <- `locality`
      }
      if (!missing(`city`)) {
        stopifnot(
          is.character(`city`),
          length(`city`) == 1
        )
        self[["city"]] <- `city`
      }
      if (!missing(`sublocality`)) {
        stopifnot(
          is.character(`sublocality`),
          length(`sublocality`) == 1
        )
        self[["sublocality"]] <- `sublocality`
      }
      if (!missing(`localityText`)) {
        stopifnot(
          is.character(`localityText`),
          length(`localityText`) == 1
        )
        self[["localityText"]] <- `localityText`
      }
      if (!missing(`dateTimeBegin`)) {
        stopifnot(
          is.character(`dateTimeBegin`),
          length(`dateTimeBegin`) == 1
        )
        self[["dateTimeBegin"]] <- `dateTimeBegin`
      }
      if (!missing(`dateTimeEnd`)) {
        stopifnot(
          is.character(`dateTimeEnd`),
          length(`dateTimeEnd`) == 1
        )
        self[["dateTimeEnd"]] <- `dateTimeEnd`
      }
      if (!missing(`method`)) {
        stopifnot(
          is.character(`method`),
          length(`method`) == 1
        )
        self[["method"]] <- `method`
      }
      if (!missing(`altitude`)) {
        stopifnot(
          is.character(`altitude`),
          length(`altitude`) == 1
        )
        self[["altitude"]] <- `altitude`
      }
      if (!missing(`altitudeUnifOfMeasurement`)) {
        stopifnot(
          is.character(`altitudeUnifOfMeasurement`),
          length(`altitudeUnifOfMeasurement`) == 1
        )
        self[["altitudeUnifOfMeasurement"]] <- `altitudeUnifOfMeasurement`
      }
      if (!missing(`biotopeText`)) {
        stopifnot(
          is.character(`biotopeText`),
          length(`biotopeText`) == 1
        )
        self[["biotopeText"]] <- `biotopeText`
      }
      if (!missing(`depth`)) {
        stopifnot(
          is.character(`depth`),
          length(`depth`) == 1
        )
        self[["depth"]] <- `depth`
      }
      if (!missing(`depthUnitOfMeasurement`)) {
        stopifnot(
          is.character(`depthUnitOfMeasurement`),
          length(`depthUnitOfMeasurement`) == 1
        )
        self[["depthUnitOfMeasurement"]] <- `depthUnitOfMeasurement`
      }
      if (!missing(`gatheringPersons`)) {
        stopifnot(
          is.list(`gatheringPersons`),
          length(`gatheringPersons`) != 0
        )
        lapply(
          `gatheringPersons`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringPersons"]] <- unname(`gatheringPersons`)
      }
      if (!missing(`gatheringOrganizations`)) {
        stopifnot(
          is.list(`gatheringOrganizations`),
          length(`gatheringOrganizations`) != 0
        )
        lapply(
          `gatheringOrganizations`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["gatheringOrganizations"]] <- unname(`gatheringOrganizations`)
      }
      if (!missing(`siteCoordinates`)) {
        stopifnot(
          is.list(`siteCoordinates`),
          length(`siteCoordinates`) != 0
        )
        lapply(
          `siteCoordinates`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["siteCoordinates"]] <- unname(`siteCoordinates`)
      }
      if (!missing(`namedAreas`)) {
        stopifnot(
          is.list(`namedAreas`),
          length(`namedAreas`) != 0
        )
        lapply(
          `namedAreas`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["namedAreas"]] <- unname(`namedAreas`)
      }
      if (!missing(`associatedTaxa`)) {
        stopifnot(
          is.list(`associatedTaxa`),
          length(`associatedTaxa`) != 0
        )
        lapply(
          `associatedTaxa`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["associatedTaxa"]] <- unname(`associatedTaxa`)
      }
      if (!missing(`chronoStratigraphy`)) {
        stopifnot(
          is.list(`chronoStratigraphy`),
          length(`chronoStratigraphy`) != 0
        )
        lapply(
          `chronoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["chronoStratigraphy"]] <- unname(`chronoStratigraphy`)
      }
      if (!missing(`lithoStratigraphy`)) {
        stopifnot(
          is.list(`lithoStratigraphy`),
          length(`lithoStratigraphy`) != 0
        )
        lapply(
          `lithoStratigraphy`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["lithoStratigraphy"]] <- unname(`lithoStratigraphy`)
      }
      if (!missing(`iptc`)) {
        stopifnot(R6::is.R6(`iptc`))
        self[["iptc"]] <- `iptc`
      }
      if (!missing(`bioStratigraphic`)) {
        stopifnot(
          is.list(`bioStratigraphic`),
          length(`bioStratigraphic`) != 0
        )
        lapply(
          `bioStratigraphic`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["bioStratigraphic"]] <- unname(`bioStratigraphic`)
      }
    },
    toList = function() {
      MultiMediaGatheringEventList <- list()
      if (!is.null(self[["projectTitle"]])) {
        MultiMediaGatheringEventList[["projectTitle"]] <-
          self[["projectTitle"]]
      }
      if (!is.null(self[["worldRegion"]])) {
        MultiMediaGatheringEventList[["worldRegion"]] <-
          self[["worldRegion"]]
      }
      if (!is.null(self[["continent"]])) {
        MultiMediaGatheringEventList[["continent"]] <-
          self[["continent"]]
      }
      if (!is.null(self[["country"]])) {
        MultiMediaGatheringEventList[["country"]] <-
          self[["country"]]
      }
      if (!is.null(self[["iso3166Code"]])) {
        MultiMediaGatheringEventList[["iso3166Code"]] <-
          self[["iso3166Code"]]
      }
      if (!is.null(self[["provinceState"]])) {
        MultiMediaGatheringEventList[["provinceState"]] <-
          self[["provinceState"]]
      }
      if (!is.null(self[["island"]])) {
        MultiMediaGatheringEventList[["island"]] <-
          self[["island"]]
      }
      if (!is.null(self[["locality"]])) {
        MultiMediaGatheringEventList[["locality"]] <-
          self[["locality"]]
      }
      if (!is.null(self[["city"]])) {
        MultiMediaGatheringEventList[["city"]] <-
          self[["city"]]
      }
      if (!is.null(self[["sublocality"]])) {
        MultiMediaGatheringEventList[["sublocality"]] <-
          self[["sublocality"]]
      }
      if (!is.null(self[["localityText"]])) {
        MultiMediaGatheringEventList[["localityText"]] <-
          self[["localityText"]]
      }
      if (!is.null(self[["dateTimeBegin"]])) {
        MultiMediaGatheringEventList[["dateTimeBegin"]] <-
          self[["dateTimeBegin"]]
      }
      if (!is.null(self[["dateTimeEnd"]])) {
        MultiMediaGatheringEventList[["dateTimeEnd"]] <-
          self[["dateTimeEnd"]]
      }
      if (!is.null(self[["method"]])) {
        MultiMediaGatheringEventList[["method"]] <-
          self[["method"]]
      }
      if (!is.null(self[["altitude"]])) {
        MultiMediaGatheringEventList[["altitude"]] <-
          self[["altitude"]]
      }
      if (!is.null(self[["altitudeUnifOfMeasurement"]])) {
        MultiMediaGatheringEventList[["altitudeUnifOfMeasurement"]] <-
          self[["altitudeUnifOfMeasurement"]]
      }
      if (!is.null(self[["biotopeText"]])) {
        MultiMediaGatheringEventList[["biotopeText"]] <-
          self[["biotopeText"]]
      }
      if (!is.null(self[["depth"]])) {
        MultiMediaGatheringEventList[["depth"]] <-
          self[["depth"]]
      }
      if (!is.null(self[["depthUnitOfMeasurement"]])) {
        MultiMediaGatheringEventList[["depthUnitOfMeasurement"]] <-
          self[["depthUnitOfMeasurement"]]
      }
      if (!is.null(self[["gatheringPersons"]])) {
        MultiMediaGatheringEventList[["gatheringPersons"]] <-
          lapply(self[["gatheringPersons"]], function(x) x$toList())
      }
      if (!is.null(self[["gatheringOrganizations"]])) {
        MultiMediaGatheringEventList[["gatheringOrganizations"]] <-
          lapply(self[["gatheringOrganizations"]], function(x) x$toList())
      }
      if (!is.null(self[["siteCoordinates"]])) {
        MultiMediaGatheringEventList[["siteCoordinates"]] <-
          lapply(self[["siteCoordinates"]], function(x) x$toList())
      }
      if (!is.null(self[["namedAreas"]])) {
        MultiMediaGatheringEventList[["namedAreas"]] <-
          lapply(self[["namedAreas"]], function(x) x$toList())
      }
      if (!is.null(self[["associatedTaxa"]])) {
        MultiMediaGatheringEventList[["associatedTaxa"]] <-
          lapply(self[["associatedTaxa"]], function(x) x$toList())
      }
      if (!is.null(self[["chronoStratigraphy"]])) {
        MultiMediaGatheringEventList[["chronoStratigraphy"]] <-
          lapply(self[["chronoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["lithoStratigraphy"]])) {
        MultiMediaGatheringEventList[["lithoStratigraphy"]] <-
          lapply(self[["lithoStratigraphy"]], function(x) x$toList())
      }
      if (!is.null(self[["iptc"]])) {
        MultiMediaGatheringEventList[["iptc"]] <-
          self[["iptc"]]$toList()
      }
      if (!is.null(self[["bioStratigraphic"]])) {
        MultiMediaGatheringEventList[["bioStratigraphic"]] <-
          lapply(self[["bioStratigraphic"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      MultiMediaGatheringEventList[vapply(
        MultiMediaGatheringEventList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(MultiMediaGatheringEventList,
                            typeMapping = NULL) {
      self[["projectTitle"]] <-
        MultiMediaGatheringEventList[["projectTitle"]]
      self[["worldRegion"]] <-
        MultiMediaGatheringEventList[["worldRegion"]]
      self[["continent"]] <-
        MultiMediaGatheringEventList[["continent"]]
      self[["country"]] <-
        MultiMediaGatheringEventList[["country"]]
      self[["iso3166Code"]] <-
        MultiMediaGatheringEventList[["iso3166Code"]]
      self[["provinceState"]] <-
        MultiMediaGatheringEventList[["provinceState"]]
      self[["island"]] <-
        MultiMediaGatheringEventList[["island"]]
      self[["locality"]] <-
        MultiMediaGatheringEventList[["locality"]]
      self[["city"]] <-
        MultiMediaGatheringEventList[["city"]]
      self[["sublocality"]] <-
        MultiMediaGatheringEventList[["sublocality"]]
      self[["localityText"]] <-
        MultiMediaGatheringEventList[["localityText"]]
      self[["dateTimeBegin"]] <-
        MultiMediaGatheringEventList[["dateTimeBegin"]]
      self[["dateTimeEnd"]] <-
        MultiMediaGatheringEventList[["dateTimeEnd"]]
      self[["method"]] <-
        MultiMediaGatheringEventList[["method"]]
      self[["altitude"]] <-
        MultiMediaGatheringEventList[["altitude"]]
      self[["altitudeUnifOfMeasurement"]] <-
        MultiMediaGatheringEventList[["altitudeUnifOfMeasurement"]]
      self[["biotopeText"]] <-
        MultiMediaGatheringEventList[["biotopeText"]]
      self[["depth"]] <-
        MultiMediaGatheringEventList[["depth"]]
      self[["depthUnitOfMeasurement"]] <-
        MultiMediaGatheringEventList[["depthUnitOfMeasurement"]]
      self[["gatheringPersons"]] <- lapply(
        MultiMediaGatheringEventList[["gatheringPersons"]],
        function(x) {
          Person$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["gatheringOrganizations"]] <- lapply(
        MultiMediaGatheringEventList[["gatheringOrganizations"]],
        function(x) {
          Organization$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["siteCoordinates"]] <- lapply(
        MultiMediaGatheringEventList[["siteCoordinates"]],
        function(x) {
          GatheringSiteCoordinates$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["namedAreas"]] <- lapply(
        MultiMediaGatheringEventList[["namedAreas"]],
        function(x) {
          NamedArea$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["associatedTaxa"]] <- lapply(
        MultiMediaGatheringEventList[["associatedTaxa"]],
        function(x) {
          AssociatedTaxon$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["chronoStratigraphy"]] <- lapply(
        MultiMediaGatheringEventList[["chronoStratigraphy"]],
        function(x) {
          ChronoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["lithoStratigraphy"]] <- lapply(
        MultiMediaGatheringEventList[["lithoStratigraphy"]],
        function(x) {
          LithoStratigraphy$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["iptc"]] <- Iptc4xmpExt$new()$fromList(
        MultiMediaGatheringEventList[["iptc"]],
        typeMapping = typeMapping
      )
      self[["bioStratigraphic"]] <- lapply(
        MultiMediaGatheringEventList[["bioStratigraphic"]],
        function(x) {
          BioStratigraphy$new()$fromList(x,
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
    fromJSONString = function(MultiMediaGatheringEventJson,
                                  typeMapping = NULL) {
      MultiMediaGatheringEventList <- jsonlite::fromJSON(
        MultiMediaGatheringEventJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(MultiMediaGatheringEventList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<MultiMediaGatheringEvent>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$projectTitle) == "environment") {
        cat("\tprojectTitle:\tobject of class", paste0("<", class(self$projectTitle)[1], ">"), "\n")
      }
      else if (typeof(self$projectTitle) == "list") {
        cat("\tprojectTitle:\tlist of length", length(self$projectTitle), "\n")
      }
      else {
        cat("\tprojectTitle:\t", self$projectTitle, "\n")
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
      if (typeof(self$continent) == "environment") {
        cat("\tcontinent:\tobject of class", paste0("<", class(self$continent)[1], ">"), "\n")
      }
      else if (typeof(self$continent) == "list") {
        cat("\tcontinent:\tlist of length", length(self$continent), "\n")
      }
      else {
        cat("\tcontinent:\t", self$continent, "\n")
      }
      if (typeof(self$country) == "environment") {
        cat("\tcountry:\tobject of class", paste0("<", class(self$country)[1], ">"), "\n")
      }
      else if (typeof(self$country) == "list") {
        cat("\tcountry:\tlist of length", length(self$country), "\n")
      }
      else {
        cat("\tcountry:\t", self$country, "\n")
      }
      if (typeof(self$iso3166Code) == "environment") {
        cat("\tiso3166Code:\tobject of class", paste0("<", class(self$iso3166Code)[1], ">"), "\n")
      }
      else if (typeof(self$iso3166Code) == "list") {
        cat("\tiso3166Code:\tlist of length", length(self$iso3166Code), "\n")
      }
      else {
        cat("\tiso3166Code:\t", self$iso3166Code, "\n")
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
      if (typeof(self$island) == "environment") {
        cat("\tisland:\tobject of class", paste0("<", class(self$island)[1], ">"), "\n")
      }
      else if (typeof(self$island) == "list") {
        cat("\tisland:\tlist of length", length(self$island), "\n")
      }
      else {
        cat("\tisland:\t", self$island, "\n")
      }
      if (typeof(self$locality) == "environment") {
        cat("\tlocality:\tobject of class", paste0("<", class(self$locality)[1], ">"), "\n")
      }
      else if (typeof(self$locality) == "list") {
        cat("\tlocality:\tlist of length", length(self$locality), "\n")
      }
      else {
        cat("\tlocality:\t", self$locality, "\n")
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
      if (typeof(self$sublocality) == "environment") {
        cat("\tsublocality:\tobject of class", paste0("<", class(self$sublocality)[1], ">"), "\n")
      }
      else if (typeof(self$sublocality) == "list") {
        cat("\tsublocality:\tlist of length", length(self$sublocality), "\n")
      }
      else {
        cat("\tsublocality:\t", self$sublocality, "\n")
      }
      if (typeof(self$localityText) == "environment") {
        cat("\tlocalityText:\tobject of class", paste0("<", class(self$localityText)[1], ">"), "\n")
      }
      else if (typeof(self$localityText) == "list") {
        cat("\tlocalityText:\tlist of length", length(self$localityText), "\n")
      }
      else {
        cat("\tlocalityText:\t", self$localityText, "\n")
      }
      if (typeof(self$dateTimeBegin) == "environment") {
        cat("\tdateTimeBegin:\tobject of class", paste0("<", class(self$dateTimeBegin)[1], ">"), "\n")
      }
      else if (typeof(self$dateTimeBegin) == "list") {
        cat("\tdateTimeBegin:\tlist of length", length(self$dateTimeBegin), "\n")
      }
      else {
        cat("\tdateTimeBegin:\t", self$dateTimeBegin, "\n")
      }
      if (typeof(self$dateTimeEnd) == "environment") {
        cat("\tdateTimeEnd:\tobject of class", paste0("<", class(self$dateTimeEnd)[1], ">"), "\n")
      }
      else if (typeof(self$dateTimeEnd) == "list") {
        cat("\tdateTimeEnd:\tlist of length", length(self$dateTimeEnd), "\n")
      }
      else {
        cat("\tdateTimeEnd:\t", self$dateTimeEnd, "\n")
      }
      if (typeof(self$method) == "environment") {
        cat("\tmethod:\tobject of class", paste0("<", class(self$method)[1], ">"), "\n")
      }
      else if (typeof(self$method) == "list") {
        cat("\tmethod:\tlist of length", length(self$method), "\n")
      }
      else {
        cat("\tmethod:\t", self$method, "\n")
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
      if (typeof(self$altitudeUnifOfMeasurement) == "environment") {
        cat("\taltitudeUnifOfMeasurement:\tobject of class", paste0("<", class(self$altitudeUnifOfMeasurement)[1], ">"), "\n")
      }
      else if (typeof(self$altitudeUnifOfMeasurement) == "list") {
        cat("\taltitudeUnifOfMeasurement:\tlist of length", length(self$altitudeUnifOfMeasurement), "\n")
      }
      else {
        cat("\taltitudeUnifOfMeasurement:\t", self$altitudeUnifOfMeasurement, "\n")
      }
      if (typeof(self$biotopeText) == "environment") {
        cat("\tbiotopeText:\tobject of class", paste0("<", class(self$biotopeText)[1], ">"), "\n")
      }
      else if (typeof(self$biotopeText) == "list") {
        cat("\tbiotopeText:\tlist of length", length(self$biotopeText), "\n")
      }
      else {
        cat("\tbiotopeText:\t", self$biotopeText, "\n")
      }
      if (typeof(self$depth) == "environment") {
        cat("\tdepth:\tobject of class", paste0("<", class(self$depth)[1], ">"), "\n")
      }
      else if (typeof(self$depth) == "list") {
        cat("\tdepth:\tlist of length", length(self$depth), "\n")
      }
      else {
        cat("\tdepth:\t", self$depth, "\n")
      }
      if (typeof(self$depthUnitOfMeasurement) == "environment") {
        cat("\tdepthUnitOfMeasurement:\tobject of class", paste0("<", class(self$depthUnitOfMeasurement)[1], ">"), "\n")
      }
      else if (typeof(self$depthUnitOfMeasurement) == "list") {
        cat("\tdepthUnitOfMeasurement:\tlist of length", length(self$depthUnitOfMeasurement), "\n")
      }
      else {
        cat("\tdepthUnitOfMeasurement:\t", self$depthUnitOfMeasurement, "\n")
      }
      if (typeof(self$gatheringPersons) == "environment") {
        cat("\tgatheringPersons:\tobject of class", paste0("<", class(self$gatheringPersons)[1], ">"), "\n")
      }
      else if (typeof(self$gatheringPersons) == "list") {
        cat("\tgatheringPersons:\tlist of length", length(self$gatheringPersons), "\n")
      }
      else {
        cat("\tgatheringPersons:\t", self$gatheringPersons, "\n")
      }
      if (typeof(self$gatheringOrganizations) == "environment") {
        cat("\tgatheringOrganizations:\tobject of class", paste0("<", class(self$gatheringOrganizations)[1], ">"), "\n")
      }
      else if (typeof(self$gatheringOrganizations) == "list") {
        cat("\tgatheringOrganizations:\tlist of length", length(self$gatheringOrganizations), "\n")
      }
      else {
        cat("\tgatheringOrganizations:\t", self$gatheringOrganizations, "\n")
      }
      if (typeof(self$siteCoordinates) == "environment") {
        cat("\tsiteCoordinates:\tobject of class", paste0("<", class(self$siteCoordinates)[1], ">"), "\n")
      }
      else if (typeof(self$siteCoordinates) == "list") {
        cat("\tsiteCoordinates:\tlist of length", length(self$siteCoordinates), "\n")
      }
      else {
        cat("\tsiteCoordinates:\t", self$siteCoordinates, "\n")
      }
      if (typeof(self$namedAreas) == "environment") {
        cat("\tnamedAreas:\tobject of class", paste0("<", class(self$namedAreas)[1], ">"), "\n")
      }
      else if (typeof(self$namedAreas) == "list") {
        cat("\tnamedAreas:\tlist of length", length(self$namedAreas), "\n")
      }
      else {
        cat("\tnamedAreas:\t", self$namedAreas, "\n")
      }
      if (typeof(self$associatedTaxa) == "environment") {
        cat("\tassociatedTaxa:\tobject of class", paste0("<", class(self$associatedTaxa)[1], ">"), "\n")
      }
      else if (typeof(self$associatedTaxa) == "list") {
        cat("\tassociatedTaxa:\tlist of length", length(self$associatedTaxa), "\n")
      }
      else {
        cat("\tassociatedTaxa:\t", self$associatedTaxa, "\n")
      }
      if (typeof(self$chronoStratigraphy) == "environment") {
        cat("\tchronoStratigraphy:\tobject of class", paste0("<", class(self$chronoStratigraphy)[1], ">"), "\n")
      }
      else if (typeof(self$chronoStratigraphy) == "list") {
        cat("\tchronoStratigraphy:\tlist of length", length(self$chronoStratigraphy), "\n")
      }
      else {
        cat("\tchronoStratigraphy:\t", self$chronoStratigraphy, "\n")
      }
      if (typeof(self$lithoStratigraphy) == "environment") {
        cat("\tlithoStratigraphy:\tobject of class", paste0("<", class(self$lithoStratigraphy)[1], ">"), "\n")
      }
      else if (typeof(self$lithoStratigraphy) == "list") {
        cat("\tlithoStratigraphy:\tlist of length", length(self$lithoStratigraphy), "\n")
      }
      else {
        cat("\tlithoStratigraphy:\t", self$lithoStratigraphy, "\n")
      }
      if (typeof(self$iptc) == "environment") {
        cat("\tiptc:\tobject of class", paste0("<", class(self$iptc)[1], ">"), "\n")
      }
      else if (typeof(self$iptc) == "list") {
        cat("\tiptc:\tlist of length", length(self$iptc), "\n")
      }
      else {
        cat("\tiptc:\t", self$iptc, "\n")
      }
      if (typeof(self$bioStratigraphic) == "environment") {
        cat("\tbioStratigraphic:\tobject of class", paste0("<", class(self$bioStratigraphic)[1], ">"), "\n")
      }
      else if (typeof(self$bioStratigraphic) == "list") {
        cat("\tbioStratigraphic:\tlist of length", length(self$bioStratigraphic), "\n")
      }
      else {
        cat("\tbioStratigraphic:\t", self$bioStratigraphic, "\n")
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
