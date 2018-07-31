# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QuerySpec Class
#'
#' @field constantScore 
#' @field fields 
#' @field conditions 
#' @field logicalOperator 
#' @field sortFields 
#' @field from 
#' @field size 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuerySpec <- R6::R6Class(
  'QuerySpec',
  public = list(
    `constantScore` = NULL,
    `fields` = NULL,
    `conditions` = NULL,
    `logicalOperator` = NULL,
    `sortFields` = NULL,
    `from` = NULL,
    `size` = NULL,
    initialize = function(`constantScore`, `fields`, `conditions`, `logicalOperator`, `sortFields`, `from`, `size`){
      if (!missing(`constantScore`)) {
        self[["constantScore"]] <- `constantScore`
      }
      if (!missing(`fields`)) {
        stopifnot(is.list(`fields`), length(`fields`) != 0)
        lapply(`fields`, function(x) stopifnot(is.character(x)))
        self[["fields"]] <- `fields`
      }
      if (!missing(`conditions`)) {
        stopifnot(is.list(`conditions`), length(`conditions`) != 0)
        lapply(`conditions`, function(x) stopifnot(R6::is.R6(x)))
        self[["conditions"]] <- `conditions`
      }
      if (!missing(`logicalOperator`)) {
        stopifnot(is.character(`logicalOperator`), length(`logicalOperator`) == 1)
        self[["logicalOperator"]] <- `logicalOperator`
      }
      if (!missing(`sortFields`)) {
        stopifnot(is.list(`sortFields`), length(`sortFields`) != 0)
        lapply(`sortFields`, function(x) stopifnot(R6::is.R6(x)))
        self[["sortFields"]] <- `sortFields`
      }
      if (!missing(`from`)) {
        stopifnot(is.numeric(`from`), length(`from`) == 1)
        self[["from"]] <- `from`
      }
      if (!missing(`size`)) {
        stopifnot(is.numeric(`size`), length(`size`) == 1)
        self[["size"]] <- `size`
      }
    },

    toList = function() {
      QuerySpecList <- list()
        if (!is.null(self[["constantScore"]])) {
        QuerySpecList[["constantScore"]] <- self[["constantScore"]]
      }
        if (!is.null(self[["fields"]])) {
        QuerySpecList[["fields"]] <- self[["fields"]]
      }
        if (!is.null(self[["conditions"]])) {
        QuerySpecList[["conditions"]] <- lapply(self[["conditions"]], function(x) x$toList())
      }
        if (!is.null(self[["logicalOperator"]])) {
        QuerySpecList[["logicalOperator"]] <- self[["logicalOperator"]]
      }
        if (!is.null(self[["sortFields"]])) {
        QuerySpecList[["sortFields"]] <- lapply(self[["sortFields"]], function(x) x$toList())
      }
        if (!is.null(self[["from"]])) {
        QuerySpecList[["from"]] <- self[["from"]]
      }
        if (!is.null(self[["size"]])) {
        QuerySpecList[["size"]] <- self[["size"]]
      }
      ## omit empty nested lists in returned list
      QuerySpecList[sapply(QuerySpecList, length) > 0]
      },

    fromList = function(QuerySpecList, typeMapping = NULL) {
      if (is.null(typeMapping[["constantScore"]])) {
          self[["constantScore"]] <- QuerySpecList[["constantScore"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["constantScore"]], "$new()")))
          self[["constantScore"]] <- obj$fromList(QuerySpecList[["constantScore"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["fields"]])) {
          self[["fields"]] <- QuerySpecList[["fields"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["fields"]], "$new()")))
          self[["fields"]] <- obj$fromList(QuerySpecList[["fields"]], typeMapping = typeMapping)
      }
      self[["conditions"]] <- lapply(QuerySpecList[["conditions"]],
                                       function(x) QueryCondition$new()$fromList(x, typeMapping = typeMapping))
      if (is.null(typeMapping[["logicalOperator"]])) {
          self[["logicalOperator"]] <- QuerySpecList[["logicalOperator"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["logicalOperator"]], "$new()")))
          self[["logicalOperator"]] <- obj$fromList(QuerySpecList[["logicalOperator"]], typeMapping = typeMapping)
      }
      self[["sortFields"]] <- lapply(QuerySpecList[["sortFields"]],
                                       function(x) SortField$new()$fromList(x, typeMapping = typeMapping))
      if (is.null(typeMapping[["from"]])) {
          self[["from"]] <- QuerySpecList[["from"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["from"]], "$new()")))
          self[["from"]] <- obj$fromList(QuerySpecList[["from"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["size"]])) {
          self[["size"]] <- QuerySpecList[["size"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["size"]], "$new()")))
          self[["size"]] <- obj$fromList(QuerySpecList[["size"]], typeMapping = typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(QuerySpecJson, typeMapping = NULL) {
      QuerySpecList <- jsonlite::fromJSON(QuerySpecJson, simplifyVector = F)
      if (is.null(typeMapping[["constantScore"]])) {
          self[["constantScore"]] <- QuerySpecList[["constantScore"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["constantScore"]], "$new()")))
          self[["constantScore"]] <- obj$fromJSONString(jsonlite::toJSON(QuerySpecList[["constantScore"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["fields"]])) {
          self[["fields"]] <- QuerySpecList[["fields"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["fields"]], "$new()")))
          self[["fields"]] <- obj$fromJSONString(jsonlite::toJSON(QuerySpecList[["fields"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["conditions"]] <- lapply(QuerySpecList[["conditions"]],
                                        function(x) QueryCondition$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping))
      if (is.null(typeMapping[["logicalOperator"]])) {
          self[["logicalOperator"]] <- QuerySpecList[["logicalOperator"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["logicalOperator"]], "$new()")))
          self[["logicalOperator"]] <- obj$fromJSONString(jsonlite::toJSON(QuerySpecList[["logicalOperator"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      self[["sortFields"]] <- lapply(QuerySpecList[["sortFields"]],
                                        function(x) SortField$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping))
      if (is.null(typeMapping[["from"]])) {
          self[["from"]] <- QuerySpecList[["from"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["from"]], "$new()")))
          self[["from"]] <- obj$fromJSONString(jsonlite::toJSON(QuerySpecList[["from"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["size"]])) {
          self[["size"]] <- QuerySpecList[["size"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["size"]], "$new()")))
          self[["size"]] <- obj$fromJSONString(jsonlite::toJSON(QuerySpecList[["size"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
