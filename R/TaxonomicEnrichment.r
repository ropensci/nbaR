# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TaxonomicEnrichment Class
#'
#' @field vernacularNames 
#' @field synonyms 
#' @field sourceSystem 
#' @field taxonId 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaxonomicEnrichment <- R6::R6Class(
  'TaxonomicEnrichment',
  public = list(
    `vernacularNames` = NULL,
    `synonyms` = NULL,
    `sourceSystem` = NULL,
    `taxonId` = NULL,
    initialize = function(`vernacularNames`, `synonyms`, `sourceSystem`, `taxonId`){
      if (!missing(`vernacularNames`)) {
        stopifnot(is.list(`vernacularNames`), length(`vernacularNames`) != 0)
        lapply(`vernacularNames`, function(x) stopifnot(R6::is.R6(x)))
        self[["vernacularNames"]] <- `vernacularNames`
      }
      if (!missing(`synonyms`)) {
        stopifnot(is.list(`synonyms`), length(`synonyms`) != 0)
        lapply(`synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self[["synonyms"]] <- `synonyms`
      }
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[["sourceSystem"]] <- `sourceSystem`
      }
      if (!missing(`taxonId`)) {
        stopifnot(is.character(`taxonId`), length(`taxonId`) == 1)
        self[["taxonId"]] <- `taxonId`
      }
    },

    toList = function() {
      TaxonomicEnrichmentList <- list()
        if (!is.null(self[["vernacularNames"]])) {
        TaxonomicEnrichmentList[["vernacularNames"]] <- lapply(self[["vernacularNames"]], function(x) x$toList())
      }
        if (!is.null(self[["synonyms"]])) {
        TaxonomicEnrichmentList[["synonyms"]] <- lapply(self[["synonyms"]], function(x) x$toList())
      }
        if (!is.null(self[["sourceSystem"]])) {
        TaxonomicEnrichmentList[["sourceSystem"]] <- self[["sourceSystem"]]$toList()
      }
        if (!is.null(self[["taxonId"]])) {
        TaxonomicEnrichmentList[["taxonId"]] <- self[["taxonId"]]
      }
      ## omit empty nested lists in returned list
      TaxonomicEnrichmentList[sapply(TaxonomicEnrichmentList, length) > 0]
      },

    fromList = function(TaxonomicEnrichmentList, typeMapping = NULL) {
      self[["vernacularNames"]] <- lapply(TaxonomicEnrichmentList[["vernacularNames"]],
                                       function(x) SummaryVernacularName$new()$fromList(x, typeMapping = typeMapping))
      self[["synonyms"]] <- lapply(TaxonomicEnrichmentList[["synonyms"]],
                                       function(x) SummaryScientificName$new()$fromList(x, typeMapping = typeMapping))
      if (is.null(typeMapping[["sourceSystem"]])) {
          self[["sourceSystem"]] <- SummarySourceSystem$new()$fromList(TaxonomicEnrichmentList[["sourceSystem"]], typeMapping = typeMapping) 
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["sourceSystem"]], "$new()")))
          self[["sourceSystem"]] <- obj$fromList(TaxonomicEnrichmentList[["sourceSystem"]], typeMapping = typeMapping)
      }
      if (is.null(typeMapping[["taxonId"]])) {
          self[["taxonId"]] <- TaxonomicEnrichmentList[["taxonId"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["taxonId"]], "$new()")))
          self[["taxonId"]] <- obj$fromList(TaxonomicEnrichmentList[["taxonId"]], typeMapping = typeMapping)
      }
      invisible(self)
    },
    
    toJSONString = function(pretty = T) {
      jsonlite::toJSON(self$toList(), simplifyVector = T, auto_unbox = T, pretty = pretty)
    },

    fromJSONString = function(TaxonomicEnrichmentJson, typeMapping = NULL) {
      TaxonomicEnrichmentList <- jsonlite::fromJSON(TaxonomicEnrichmentJson, simplifyVector = F)
      self[["vernacularNames"]] <- lapply(TaxonomicEnrichmentList[["vernacularNames"]],
                                        function(x) SummaryVernacularName$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping))
      self[["synonyms"]] <- lapply(TaxonomicEnrichmentList[["synonyms"]],
                                        function(x) SummaryScientificName$new()$fromJSONString(jsonlite::toJSON(x, auto_unbox = TRUE), typeMapping = typeMapping))
      if (is.null(typeMapping[["sourceSystem"]])) {
          self[["sourceSystem"]] <- SummarySourceSystem$new()$fromJSONString(jsonlite::toJSON(TaxonomicEnrichmentList[["sourceSystem"]], auto_unbox = TRUE), typeMapping = typeMapping) 
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["sourceSystem"]], "$new()")))
          self[["sourceSystem"]] <- obj$fromJSONString(jsonlite::toJSON(TaxonomicEnrichmentList[["sourceSystem"]], auto_unbox = TRUE), typeMapping=typeMapping)
      }
      if (is.null(typeMapping[["taxonId"]])) {
          self[["taxonId"]] <- TaxonomicEnrichmentList[["taxonId"]]
      } else {
          obj <- eval(parse(text = paste0(typeMapping[["taxonId"]], "$new()")))
          self[["taxonId"]] <- obj$fromJSONString(jsonlite::toJSON(TaxonomicEnrichmentList[["taxonId"]], auto_unbox = TRUE), typeMapping = typeMapping)
      }
      invisible(self)
    }
  )
)
