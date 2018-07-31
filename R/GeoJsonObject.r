# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GeoJsonObject Class
#'
#' @field crs 
#' @field bbox 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoJsonObject <- R6::R6Class(
  'GeoJsonObject',
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    initialize = function(`crs`, `bbox`){
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(is.list(`bbox`), length(`bbox`) != 0)
        lapply(`bbox`, function(x) stopifnot(is.character(x)))
        self[["bbox"]] <- `bbox`
      }
    },

    toList = function() {
      GeoJsonObjectList <- list()
        if (!is.null(self[["crs"]])) {
        GeoJsonObjectList[["crs"]] <- self[["crs"]]$toList()
      }
        if (!is.null(self[["bbox"]])) {
        GeoJsonObjectList[["bbox"]] <- self[["bbox"]]
      }
      ## omit empty nested lists in returned list
      GeoJsonObjectList[sapply(GeoJsonObjectList, length) > 0]
      },

    fromList = function(GeoJsonObjectList, typeMapping = NULL) {
      if (is.null(typeMapping[["crs"]])) {
          self[["crs"]] <- Crs$new()$fromList(GeoJsonObjectList[["crs"]], typeMapping = typeMapping) 
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["crs"]], "$new()")))
          self[["crs"]] <- obj$fromList(GeoJsonObjectList[["crs"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["bbox"]])) {
          self[["bbox"]] <- GeoJsonObjectList[["bbox"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["bbox"]], "$new()")))
          self[["bbox"]] <- obj$fromList(GeoJsonObjectList[["bbox"]], typeMapping = typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(GeoJsonObjectJson, typeMapping = NULL) {
      GeoJsonObjectList <- jsonlite::fromJSON(GeoJsonObjectJson, simplifyVector = F)
      if (is.null(typeMapping[["crs"]])) {
          self[["crs"]] <- Crs$new()$fromJSONString(jsonlite::toJSON(GeoJsonObjectList[["crs"]], auto_unbox = TRUE), typeMapping = typeMapping) 
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["crs"]], "$new()")))
          self[["crs"]] <- obj$fromJSONString(jsonlite::toJSON(GeoJsonObjectList[["crs"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["bbox"]])) {
          self[["bbox"]] <- GeoJsonObjectList[["bbox"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["bbox"]], "$new()")))
          self[["bbox"]] <- obj$fromJSONString(jsonlite::toJSON(GeoJsonObjectList[["bbox"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
