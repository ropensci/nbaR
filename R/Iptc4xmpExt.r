# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Iptc4xmpExt Class
#'
#' @field locationShown
#' @field worldRegion
#' @field countryCode
#' @field countryName
#' @field provinceState
#' @field city
#' @field sublocation
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Iptc4xmpExt <- R6::R6Class(
  "Iptc4xmpExt",
  public = list(
    `locationShown` = NULL,
    `worldRegion` = NULL,
    `countryCode` = NULL,
    `countryName` = NULL,
    `provinceState` = NULL,
    `city` = NULL,
    `sublocation` = NULL,
    initialize = function(`locationShown`, `worldRegion`, `countryCode`, `countryName`, `provinceState`, `city`, `sublocation`) {
      if (!missing(`locationShown`)) {
        stopifnot(is.character(`locationShown`), length(`locationShown`) == 1)
        self[["locationShown"]] <- `locationShown`
      }
      if (!missing(`worldRegion`)) {
        stopifnot(is.character(`worldRegion`), length(`worldRegion`) == 1)
        self[["worldRegion"]] <- `worldRegion`
      }
      if (!missing(`countryCode`)) {
        stopifnot(is.character(`countryCode`), length(`countryCode`) == 1)
        self[["countryCode"]] <- `countryCode`
      }
      if (!missing(`countryName`)) {
        stopifnot(is.character(`countryName`), length(`countryName`) == 1)
        self[["countryName"]] <- `countryName`
      }
      if (!missing(`provinceState`)) {
        stopifnot(is.character(`provinceState`), length(`provinceState`) == 1)
        self[["provinceState"]] <- `provinceState`
      }
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self[["city"]] <- `city`
      }
      if (!missing(`sublocation`)) {
        stopifnot(is.character(`sublocation`), length(`sublocation`) == 1)
        self[["sublocation"]] <- `sublocation`
      }
    },

    toList = function() {
      Iptc4xmpExtList <- list()
      if (!is.null(self[["locationShown"]])) {
        Iptc4xmpExtList[["locationShown"]] <- self[["locationShown"]]
      }
      if (!is.null(self[["worldRegion"]])) {
        Iptc4xmpExtList[["worldRegion"]] <- self[["worldRegion"]]
      }
      if (!is.null(self[["countryCode"]])) {
        Iptc4xmpExtList[["countryCode"]] <- self[["countryCode"]]
      }
      if (!is.null(self[["countryName"]])) {
        Iptc4xmpExtList[["countryName"]] <- self[["countryName"]]
      }
      if (!is.null(self[["provinceState"]])) {
        Iptc4xmpExtList[["provinceState"]] <- self[["provinceState"]]
      }
      if (!is.null(self[["city"]])) {
        Iptc4xmpExtList[["city"]] <- self[["city"]]
      }
      if (!is.null(self[["sublocation"]])) {
        Iptc4xmpExtList[["sublocation"]] <- self[["sublocation"]]
      }
      ## omit empty nested lists in returned list
      Iptc4xmpExtList[vapply(Iptc4xmpExtList, length, FUN.VALUE = integer(1)) > 0]
    },

    fromList = function(Iptc4xmpExtList, typeMapping = NULL) {
      if (is.null(typeMapping[["locationShown"]])) {
        self[["locationShown"]] <- Iptc4xmpExtList[["locationShown"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["locationShown"]], "$new()")))
        self[["locationShown"]] <- obj$fromList(Iptc4xmpExtList[["locationShown"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["worldRegion"]])) {
        self[["worldRegion"]] <- Iptc4xmpExtList[["worldRegion"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["worldRegion"]], "$new()")))
        self[["worldRegion"]] <- obj$fromList(Iptc4xmpExtList[["worldRegion"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["countryCode"]])) {
        self[["countryCode"]] <- Iptc4xmpExtList[["countryCode"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["countryCode"]], "$new()")))
        self[["countryCode"]] <- obj$fromList(Iptc4xmpExtList[["countryCode"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["countryName"]])) {
        self[["countryName"]] <- Iptc4xmpExtList[["countryName"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["countryName"]], "$new()")))
        self[["countryName"]] <- obj$fromList(Iptc4xmpExtList[["countryName"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["provinceState"]])) {
        self[["provinceState"]] <- Iptc4xmpExtList[["provinceState"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["provinceState"]], "$new()")))
        self[["provinceState"]] <- obj$fromList(Iptc4xmpExtList[["provinceState"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["city"]])) {
        self[["city"]] <- Iptc4xmpExtList[["city"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["city"]], "$new()")))
        self[["city"]] <- obj$fromList(Iptc4xmpExtList[["city"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["sublocation"]])) {
        self[["sublocation"]] <- Iptc4xmpExtList[["sublocation"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["sublocation"]], "$new()")))
        self[["sublocation"]] <- obj$fromList(Iptc4xmpExtList[["sublocation"]], typeMapping = typeMapping)
      }
      invisible(self)
    },

    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(Iptc4xmpExtJson, typeMapping = NULL) {
      Iptc4xmpExtList <- jsonlite::fromJSON(Iptc4xmpExtJson, simplifyVector = F)
      if (is.null(typeMapping[["locationShown"]])) {
        self[["locationShown"]] <- Iptc4xmpExtList[["locationShown"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["locationShown"]], "$new()")))
        self[["locationShown"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["locationShown"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["worldRegion"]])) {
        self[["worldRegion"]] <- Iptc4xmpExtList[["worldRegion"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["worldRegion"]], "$new()")))
        self[["worldRegion"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["worldRegion"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["countryCode"]])) {
        self[["countryCode"]] <- Iptc4xmpExtList[["countryCode"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["countryCode"]], "$new()")))
        self[["countryCode"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["countryCode"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["countryName"]])) {
        self[["countryName"]] <- Iptc4xmpExtList[["countryName"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["countryName"]], "$new()")))
        self[["countryName"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["countryName"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["provinceState"]])) {
        self[["provinceState"]] <- Iptc4xmpExtList[["provinceState"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["provinceState"]], "$new()")))
        self[["provinceState"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["provinceState"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["city"]])) {
        self[["city"]] <- Iptc4xmpExtList[["city"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["city"]], "$new()")))
        self[["city"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["city"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["sublocation"]])) {
        self[["sublocation"]] <- Iptc4xmpExtList[["sublocation"]]
      } else {
        obj <- eval(parse(text = paste0(typeMapping[["sublocation"]], "$new()")))
        self[["sublocation"]] <- obj$fromJSONString(jsonlite::toJSON(Iptc4xmpExtList[["sublocation"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
