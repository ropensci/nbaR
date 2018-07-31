# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ServiceAccessPoint Class
#'
#' @field accessUri 
#' @field format 
#' @field variant 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceAccessPoint <- R6::R6Class(
  'ServiceAccessPoint',
  public = list(
    `accessUri` = NULL,
    `format` = NULL,
    `variant` = NULL,
    initialize = function(`accessUri`, `format`, `variant`){
      if (!missing(`accessUri`)) {
        stopifnot(is.character(`accessUri`), length(`accessUri`) == 1)
        self[["accessUri"]] <- `accessUri`
      }
      if (!missing(`format`)) {
        stopifnot(is.character(`format`), length(`format`) == 1)
        self[["format"]] <- `format`
      }
      if (!missing(`variant`)) {
        stopifnot(is.character(`variant`), length(`variant`) == 1)
        self[["variant"]] <- `variant`
      }
    },

    toList = function() {
      ServiceAccessPointList <- list()
        if (!is.null(self[["accessUri"]])) {
        ServiceAccessPointList[["accessUri"]] <- self[["accessUri"]]
      }
        if (!is.null(self[["format"]])) {
        ServiceAccessPointList[["format"]] <- self[["format"]]
      }
        if (!is.null(self[["variant"]])) {
        ServiceAccessPointList[["variant"]] <- self[["variant"]]
      }
      ## omit empty nested lists in returned list
      ServiceAccessPointList[sapply(ServiceAccessPointList, length) > 0]
      },

    fromList = function(ServiceAccessPointList, typeMapping = NULL) {
      if (is.null(typeMapping[["accessUri"]])) {
          self[["accessUri"]] <- ServiceAccessPointList[["accessUri"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["accessUri"]], "$new()")))
          self[["accessUri"]] <- obj$fromList(ServiceAccessPointList[["accessUri"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["format"]])) {
          self[["format"]] <- ServiceAccessPointList[["format"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["format"]], "$new()")))
          self[["format"]] <- obj$fromList(ServiceAccessPointList[["format"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["variant"]])) {
          self[["variant"]] <- ServiceAccessPointList[["variant"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["variant"]], "$new()")))
          self[["variant"]] <- obj$fromList(ServiceAccessPointList[["variant"]], typeMapping = typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(ServiceAccessPointJson, typeMapping = NULL) {
      ServiceAccessPointList <- jsonlite::fromJSON(ServiceAccessPointJson, simplifyVector = F)
      if (is.null(typeMapping[["accessUri"]])) {
          self[["accessUri"]] <- ServiceAccessPointList[["accessUri"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["accessUri"]], "$new()")))
          self[["accessUri"]] <- obj$fromJSONString(jsonlite::toJSON(ServiceAccessPointList[["accessUri"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["format"]])) {
          self[["format"]] <- ServiceAccessPointList[["format"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["format"]], "$new()")))
          self[["format"]] <- obj$fromJSONString(jsonlite::toJSON(ServiceAccessPointList[["format"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["variant"]])) {
          self[["variant"]] <- ServiceAccessPointList[["variant"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["variant"]], "$new()")))
          self[["variant"]] <- obj$fromJSONString(jsonlite::toJSON(ServiceAccessPointList[["variant"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
