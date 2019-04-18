# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Metadata operations
#' @description This client connects to all Metadata-related endpoints
#' of the NBA. Each endpoint is available as a class method
#' (see section 'Methods' below). Optionally, a custom URL
#' pointing to a NBA server and a user Agent can be specified
#' by the user (see section 'Fields' below).
#'
#' @docType class
#'
#' @format R6 class
#'
#' @field basePath Stores url path of the request, defaults to http://api.biodiversitydata.nl/v2
#' @field userAgent Set the user agent of the request, defaults to nbaR/0.0.1
#'
#' @importFrom R6 R6Class
#'
#' @usage
#' # client <- MetadataClient$new()
#'
#' @section Methods:
#' \describe{
#' \item{\code{ get_allowed_date_formats }}{
#'
#'   Get allowed values for dates in queries;
#'   Queries with other formatted dates will result in a query error.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_controlled_list_phase_or_stage }}{
#'
#'   Get allowed values for the field &#39;PhaseOrStage&#39; in a specimen document;
#'   See also endpoint /getControlledLists.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_controlled_list_sex }}{
#'
#'   Get allowed values for the field &#39;Sex&#39; in a specimen document;
#'   See also endpoint /getControlledLists.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_controlled_list_specimen_type_status }}{
#'
#'   Get allowed values for the field &#39;SpecimenTypeStatus&#39; in a specimen document;
#'   See also endpoint /getControlledLists.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_controlled_list_taxonomic_status }}{
#'
#'   Get allowed values for the field &#39;TaxonomicStatus&#39; in specimen and taxon documents;
#'   See also endpoint /getControlledLists.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_controlled_lists }}{
#'
#'   Get the names of fields for which a controlled vocabulary exists;
#'   Possible values for fields with controlled vocabularies can be queried with metadata/getControlledList/{field}.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_rest_services }}{
#'
#'   List all available REST services and their parameters;
#'   Lists end point name, http method, response type, and URL.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ RestService }
#' }
#' \item{\code{ get_setting }}{
#'
#'   Get the value of an NBA setting;
#'   All settings can be queried with /metadata/getSettings.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ name } : name of setting
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_settings }}{
#'
#'   List all publicly available configuration settings for the NBA;
#'   The value of a specific setting can be queried with metadata/getSetting/{name}.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_source_systems }}{
#'
#'   Get the data sources from which the data was retrieved;
#'   Returns code and name of all source systems.
#'
#'     Parameters:
#'     \itemize{
#'
#'
#'
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ SourceSystem }
#' }
#' }
#'
#' @export
MetadataClient <- R6::R6Class(
  "MetadataClient",
  inherit = ApiClient,
  public = list(
    initialize = function(basePath, userAgent) {
      super$initialize(basePath, userAgent)
    },

    get_allowed_date_formats = function(
                                            ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getAllowedDateFormats"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_controlled_list_phase_or_stage = function(
                                                      ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getControlledList/PhaseOrStage"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_controlled_list_sex = function(
                                           ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getControlledList/Sex"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_controlled_list_specimen_type_status = function(
                                                            ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getControlledList/SpecimenTypeStatus"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_controlled_list_taxonomic_status = function(
                                                        ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getControlledList/TaxonomicStatus"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_controlled_lists = function(
                                        ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getControlledLists"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_rest_services = function(
                                     ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getRestServices"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- RestService$new()
        ## API call result is "list container"
        result <- lapply(
          httr::content(response),
          function(x) {
            cl <- returnObject$clone()
            cl$fromList(x,
              typeMapping = list(item = private$getBaseDataType())
            )
          }
        )
        Response$new(result, response)
      }
    },
    get_setting = function(
                               name = NULL,
                               ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getSetting/{name}"

      if (!missing(`name`)) {
        ## build URL for path param
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    get_settings = function(
                                ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getSettings"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_source_systems = function(
                                      ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/metadata/getSourceSystems"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = as.list(queryParams),
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- SourceSystem$new()
        ## API call result is "list container"
        result <- lapply(
          httr::content(response),
          function(x) {
            cl <- returnObject$clone()
            cl$fromList(x,
              typeMapping = list(item = private$getBaseDataType())
            )
          }
        )
        Response$new(result, response)
      }
    },
    print = function(...) {
      ## print class name
      cat("<MetadataClient>\n")
      cat("\tInherits from: <ApiClient>\n\n")
      ## print all members with values
      cat("Fields:\n")
      cat("\tbasePath:\t", self$basePath, "\n")
      cat("\tuserAgent:\t", self$userAgent, "\n")
      ## print all methods
      cat("Methods:\n")
      cat("\tget_allowed_date_formats", "\n")
      cat("\tget_controlled_list_phase_or_stage", "\n")
      cat("\tget_controlled_list_sex", "\n")
      cat("\tget_controlled_list_specimen_type_status", "\n")
      cat("\tget_controlled_list_taxonomic_status", "\n")
      cat("\tget_controlled_lists", "\n")
      cat("\tget_rest_services", "\n")
      cat("\tget_setting", "\n")
      cat("\tget_settings", "\n")
      cat("\tget_source_systems", "\n")
      cat("\tping\n")
      invisible(self)
    }
  )
)
