# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Monomial Class
#'
#' @field rank
#' @field name
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Monomial <- R6::R6Class(
  "Monomial",
  public = list(
    `rank` = NULL,
    `name` = NULL,
    initialize = function(`rank`, `name`) {
      if (!missing(`rank`)) {
        stopifnot(is.character(`rank`), length(`rank`) == 1)
        self[["rank"]] <- `rank`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self[["name"]] <- `name`
      }
    },

    toList = function() {
      MonomialList <- list()
      if (!is.null(self[["rank"]])) {
        MonomialList[["rank"]] <- self[["rank"]]
      }
      if (!is.null(self[["name"]])) {
        MonomialList[["name"]] <- self[["name"]]
      }
      ## omit empty nested lists in returned list
      MonomialList[vapply(MonomialList, length, FUN.VALUE = integer(1)) > 0]
    },

    fromList = function(MonomialList, typeMapping = NULL) {
      if (is.null(typeMapping[["rank"]])) {
        self[["rank"]] <- MonomialList[["rank"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["rank"]], "$new()")))
        self[["rank"]] <- obj$fromList(MonomialList[["rank"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <- MonomialList[["name"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["name"]], "$new()")))
        self[["name"]] <- obj$fromList(MonomialList[["name"]], typeMapping = typeMapping)
      }
      invisible(self)
    },

    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(MonomialJson, typeMapping = NULL) {
      MonomialList <- jsonlite::fromJSON(MonomialJson, simplifyVector = F)
      if (is.null(typeMapping[["rank"]])) {
        self[["rank"]] <- MonomialList[["rank"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["rank"]], "$new()")))
        self[["rank"]] <- obj$fromJSONString(jsonlite::toJSON(MonomialList[["rank"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["name"]])) {
        self[["name"]] <- MonomialList[["name"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["name"]], "$new()")))
        self[["name"]] <- obj$fromJSONString(jsonlite::toJSON(MonomialList[["name"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
