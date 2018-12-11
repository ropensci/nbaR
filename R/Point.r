# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Point Class
#'
#'
#'
#' @field crs  Crs
#' @field bbox  list(numeric)
#' @field coordinates  LngLatAlt
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Point object.
#'
#' }
#' \item{\code{$fromList(PointList)}}{
#'
#'   Create Point object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Point.
#'
#' }
#' \item{\code{fromJSONString(PointJson)}}{
#'
#'   Create Point object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Point.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Point <- R6::R6Class(
  "Point",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `coordinates`) {
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(
          is.list(`bbox`),
          length(`bbox`) != 0
        )
        lapply(
          `bbox`,
          function(x) stopifnot(is.character(x))
        )
        self[["bbox"]] <- `bbox`
      }
      if (!missing(`coordinates`)) {
        stopifnot(R6::is.R6(`coordinates`))
        self[["coordinates"]] <- `coordinates`
      }
    },
    toList = function() {
      PointList <- list()
      if (!is.null(self[["crs"]])) {
        PointList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        PointList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["coordinates"]])) {
        PointList[["coordinates"]] <-
          self[["coordinates"]]$toList()
      }
      ## omit empty nested lists in returned list
      PointList[vapply(
        PointList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(PointList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        PointList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        PointList[["bbox"]]
      self[["coordinates"]] <- LngLatAlt$new()$fromList(
        PointList[["coordinates"]],
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
    fromJSONString = function(PointJson,
                                  typeMapping = NULL) {
      PointList <- jsonlite::fromJSON(
        PointJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(PointList)
      invisible(self)
    }
  )
)
