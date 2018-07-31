# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DefaultClassification Class
#'
#' @field kingdom 
#' @field phylum 
#' @field className 
#' @field order 
#' @field superFamily 
#' @field family 
#' @field genus 
#' @field subgenus 
#' @field specificEpithet 
#' @field infraspecificEpithet 
#' @field infraspecificRank 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultClassification <- R6::R6Class(
  'DefaultClassification',
  public = list(
    `kingdom` = NULL,
    `phylum` = NULL,
    `className` = NULL,
    `order` = NULL,
    `superFamily` = NULL,
    `family` = NULL,
    `genus` = NULL,
    `subgenus` = NULL,
    `specificEpithet` = NULL,
    `infraspecificEpithet` = NULL,
    `infraspecificRank` = NULL,
    initialize = function(`kingdom`, `phylum`, `className`, `order`, `superFamily`, `family`, `genus`, `subgenus`, `specificEpithet`, `infraspecificEpithet`, `infraspecificRank`){
      if (!missing(`kingdom`)) {
        stopifnot(is.character(`kingdom`), length(`kingdom`) == 1)
        self[["kingdom"]] <- `kingdom`
      }
      if (!missing(`phylum`)) {
        stopifnot(is.character(`phylum`), length(`phylum`) == 1)
        self[["phylum"]] <- `phylum`
      }
      if (!missing(`className`)) {
        stopifnot(is.character(`className`), length(`className`) == 1)
        self[["className"]] <- `className`
      }
      if (!missing(`order`)) {
        stopifnot(is.character(`order`), length(`order`) == 1)
        self[["order"]] <- `order`
      }
      if (!missing(`superFamily`)) {
        stopifnot(is.character(`superFamily`), length(`superFamily`) == 1)
        self[["superFamily"]] <- `superFamily`
      }
      if (!missing(`family`)) {
        stopifnot(is.character(`family`), length(`family`) == 1)
        self[["family"]] <- `family`
      }
      if (!missing(`genus`)) {
        stopifnot(is.character(`genus`), length(`genus`) == 1)
        self[["genus"]] <- `genus`
      }
      if (!missing(`subgenus`)) {
        stopifnot(is.character(`subgenus`), length(`subgenus`) == 1)
        self[["subgenus"]] <- `subgenus`
      }
      if (!missing(`specificEpithet`)) {
        stopifnot(is.character(`specificEpithet`), length(`specificEpithet`) == 1)
        self[["specificEpithet"]] <- `specificEpithet`
      }
      if (!missing(`infraspecificEpithet`)) {
        stopifnot(is.character(`infraspecificEpithet`), length(`infraspecificEpithet`) == 1)
        self[["infraspecificEpithet"]] <- `infraspecificEpithet`
      }
      if (!missing(`infraspecificRank`)) {
        stopifnot(is.character(`infraspecificRank`), length(`infraspecificRank`) == 1)
        self[["infraspecificRank"]] <- `infraspecificRank`
      }
    },

    toList = function() {
      DefaultClassificationList <- list()
        if (!is.null(self[["kingdom"]])) {
        DefaultClassificationList[["kingdom"]] <- self[["kingdom"]]
      }
        if (!is.null(self[["phylum"]])) {
        DefaultClassificationList[["phylum"]] <- self[["phylum"]]
      }
        if (!is.null(self[["className"]])) {
        DefaultClassificationList[["className"]] <- self[["className"]]
      }
        if (!is.null(self[["order"]])) {
        DefaultClassificationList[["order"]] <- self[["order"]]
      }
        if (!is.null(self[["superFamily"]])) {
        DefaultClassificationList[["superFamily"]] <- self[["superFamily"]]
      }
        if (!is.null(self[["family"]])) {
        DefaultClassificationList[["family"]] <- self[["family"]]
      }
        if (!is.null(self[["genus"]])) {
        DefaultClassificationList[["genus"]] <- self[["genus"]]
      }
        if (!is.null(self[["subgenus"]])) {
        DefaultClassificationList[["subgenus"]] <- self[["subgenus"]]
      }
        if (!is.null(self[["specificEpithet"]])) {
        DefaultClassificationList[["specificEpithet"]] <- self[["specificEpithet"]]
      }
        if (!is.null(self[["infraspecificEpithet"]])) {
        DefaultClassificationList[["infraspecificEpithet"]] <- self[["infraspecificEpithet"]]
      }
        if (!is.null(self[["infraspecificRank"]])) {
        DefaultClassificationList[["infraspecificRank"]] <- self[["infraspecificRank"]]
      }
      ## omit empty nested lists in returned list
      DefaultClassificationList[sapply(DefaultClassificationList, length) > 0]
      },

    fromList = function(DefaultClassificationList, typeMapping = NULL) {
      if (is.null(typeMapping[["kingdom"]])) {
          self[["kingdom"]] <- DefaultClassificationList[["kingdom"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["kingdom"]], "$new()")))
          self[["kingdom"]] <- obj$fromList(DefaultClassificationList[["kingdom"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["phylum"]])) {
          self[["phylum"]] <- DefaultClassificationList[["phylum"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["phylum"]], "$new()")))
          self[["phylum"]] <- obj$fromList(DefaultClassificationList[["phylum"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["className"]])) {
          self[["className"]] <- DefaultClassificationList[["className"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["className"]], "$new()")))
          self[["className"]] <- obj$fromList(DefaultClassificationList[["className"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["order"]])) {
          self[["order"]] <- DefaultClassificationList[["order"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["order"]], "$new()")))
          self[["order"]] <- obj$fromList(DefaultClassificationList[["order"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["superFamily"]])) {
          self[["superFamily"]] <- DefaultClassificationList[["superFamily"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["superFamily"]], "$new()")))
          self[["superFamily"]] <- obj$fromList(DefaultClassificationList[["superFamily"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["family"]])) {
          self[["family"]] <- DefaultClassificationList[["family"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["family"]], "$new()")))
          self[["family"]] <- obj$fromList(DefaultClassificationList[["family"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["genus"]])) {
          self[["genus"]] <- DefaultClassificationList[["genus"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["genus"]], "$new()")))
          self[["genus"]] <- obj$fromList(DefaultClassificationList[["genus"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["subgenus"]])) {
          self[["subgenus"]] <- DefaultClassificationList[["subgenus"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["subgenus"]], "$new()")))
          self[["subgenus"]] <- obj$fromList(DefaultClassificationList[["subgenus"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specificEpithet"]])) {
          self[["specificEpithet"]] <- DefaultClassificationList[["specificEpithet"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["specificEpithet"]], "$new()")))
          self[["specificEpithet"]] <- obj$fromList(DefaultClassificationList[["specificEpithet"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["infraspecificEpithet"]])) {
          self[["infraspecificEpithet"]] <- DefaultClassificationList[["infraspecificEpithet"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["infraspecificEpithet"]], "$new()")))
          self[["infraspecificEpithet"]] <- obj$fromList(DefaultClassificationList[["infraspecificEpithet"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["infraspecificRank"]])) {
          self[["infraspecificRank"]] <- DefaultClassificationList[["infraspecificRank"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["infraspecificRank"]], "$new()")))
          self[["infraspecificRank"]] <- obj$fromList(DefaultClassificationList[["infraspecificRank"]], typeMapping = typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(DefaultClassificationJson, typeMapping = NULL) {
      DefaultClassificationList <- jsonlite::fromJSON(DefaultClassificationJson, simplifyVector = F)
      if (is.null(typeMapping[["kingdom"]])) {
          self[["kingdom"]] <- DefaultClassificationList[["kingdom"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["kingdom"]], "$new()")))
          self[["kingdom"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["kingdom"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["phylum"]])) {
          self[["phylum"]] <- DefaultClassificationList[["phylum"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["phylum"]], "$new()")))
          self[["phylum"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["phylum"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["className"]])) {
          self[["className"]] <- DefaultClassificationList[["className"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["className"]], "$new()")))
          self[["className"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["className"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["order"]])) {
          self[["order"]] <- DefaultClassificationList[["order"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["order"]], "$new()")))
          self[["order"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["order"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["superFamily"]])) {
          self[["superFamily"]] <- DefaultClassificationList[["superFamily"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["superFamily"]], "$new()")))
          self[["superFamily"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["superFamily"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["family"]])) {
          self[["family"]] <- DefaultClassificationList[["family"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["family"]], "$new()")))
          self[["family"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["family"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["genus"]])) {
          self[["genus"]] <- DefaultClassificationList[["genus"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["genus"]], "$new()")))
          self[["genus"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["genus"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["subgenus"]])) {
          self[["subgenus"]] <- DefaultClassificationList[["subgenus"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["subgenus"]], "$new()")))
          self[["subgenus"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["subgenus"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["specificEpithet"]])) {
          self[["specificEpithet"]] <- DefaultClassificationList[["specificEpithet"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["specificEpithet"]], "$new()")))
          self[["specificEpithet"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["specificEpithet"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["infraspecificEpithet"]])) {
          self[["infraspecificEpithet"]] <- DefaultClassificationList[["infraspecificEpithet"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["infraspecificEpithet"]], "$new()")))
          self[["infraspecificEpithet"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["infraspecificEpithet"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["infraspecificRank"]])) {
          self[["infraspecificRank"]] <- DefaultClassificationList[["infraspecificRank"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["infraspecificRank"]], "$new()")))
          self[["infraspecificRank"]] <- obj$fromJSONString(jsonlite::toJSON(DefaultClassificationList[["infraspecificRank"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
