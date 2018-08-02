# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LineString Class
#'
#' @field crs
#' @field bbox
#' @field coordinates
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LineString <- R6::R6Class(
  "LineString",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(`crs`, `bbox`, `coordinates`) {
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(is.list(`bbox`), length(`bbox`) != 0)
        lapply(`bbox`, function(x) stopifnot(is.character(x)))
        self[["bbox"]] <- `bbox`
      }
      if (!missing(`coordinates`)) {
        stopifnot(is.list(`coordinates`), length(`coordinates`) != 0)
        lapply(`coordinates`, function(x) stopifnot(R6::is.R6(x)))
        self[["coordinates"]] <- `coordinates`
      }
    },

    toList = function() {
      LineStringList <- list()
      if (!is.null(self[["crs"]])) {
        LineStringList[["crs"]] <- self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        LineStringList[["bbox"]] <- self[["bbox"]]
      }
      if (!is.null(self[["coordinates"]])) {
        LineStringList[["coordinates"]] <- lapply(self[["coordinates"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      LineStringList[vapply(LineStringList, length, FUN.VALUE = integer(1)) > 0]
    },

    fromList = function(LineStringList, typeMapping = NULL) {
      if (is.null(typeMapping[["crs"]])) {
        self[["crs"]] <- Crs$new()$fromList(LineStringList[["crs"]], typeMapping = typeMapping)
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["crs"]], "$new()")))
        self[["crs"]] <- obj$fromList(LineStringList[["crs"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["bbox"]])) {
        self[["bbox"]] <- LineStringList[["bbox"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["bbox"]], "$new()")))
        self[["bbox"]] <- obj$fromList(LineStringList[["bbox"]], typeMapping = typeMapping)
      }
      self[["coordinates"]] <- lapply(
        LineStringList[["coordinates"]],
        function(x) LngLatAlt$new()$fromList(x, typeMapping = typeMapping)
      )
      invisible(self)
    },

    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(LineStringJson, typeMapping = NULL) {
      LineStringList <- jsonlite::fromJSON(LineStringJson, simplifyVector = F)
      if (is.null(typeMapping[["crs"]])) {
        self[["crs"]] <- Crs$new()$fromJSONString(jsonlite::toJSON(LineStringList[["crs"]], auto_unbox = TRUE), typeMapping = typeMapping)
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["crs"]], "$new()")))
        self[["crs"]] <- obj$fromJSONString(jsonlite::toJSON(LineStringList[["crs"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["bbox"]])) {
        self[["bbox"]] <- LineStringList[["bbox"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["bbox"]], "$new()")))
        self[["bbox"]] <- obj$fromJSONString(jsonlite::toJSON(LineStringList[["bbox"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["coordinates"]] <- lapply(
        LineStringList[["coordinates"]],
        function(x) LngLatAlt$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping)
      )
      invisible(self)
    }
  )
)
