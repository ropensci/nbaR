# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Multimedia operations
#' @description nbaR.Multimedia
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' count_http_get1 Get the number of multimedia documents matching a condition
#'
#'
#' count_http_post_json1 Get the number of multimedia documents matching a condition
#'
#'
#' find2 Find a multimedia document by id
#'
#'
#' find_by_ids2 Find multimedia document by ids
#'
#'
#' get_distinct_values_http_get1 Get all different values that can be found for one field
#'
#'
#' get_distinct_values_http_post_json1 Get all different values that exist for a field
#'
#'
#' get_field_info1 Returns extended information for each field of a multimedia document
#'
#'
#' get_paths1 Returns the full path of all fields within a document
#'
#'
#' get_settings2 Get the value of an NBA setting
#'
#'
#' get_settings3 List all publicly available configuration settings for the NBA
#'
#'
#' is_operator_allowed1 Checks if a given operator is allowed for a given field
#'
#'
#' query_http_get1 Query for multimedia documents
#'
#'
#' query_http_post_json1 Query for multimedia documents
#'
#' }
#'
#' @export
MultimediaClient <- R6::R6Class(
  'MultimediaClient',
  public = list(
    userAgent = "Swagger-Codegen/0.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },

      # '@name count_http_get1
      # '@title Get the number of multimedia documents matching a condition
      # '@description Conditions given as query parameters or QuerySpec JSON
      # '@return \code{ integer }
      # '@param source_system_code: character; Example query param
      count_http_get1 = function(source_system_code, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`source_system_code`)) {
        param <- ifelse(typeof(`source_system_code`) == "environment", `source_system_code`$toJSONString(), `source_system_code`)    
        queryParams['sourceSystem.code'] <- param
      }

      urlPath <- "/multimedia/count"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- integer$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name count_http_post_json1
      # '@title Get the number of multimedia documents matching a condition
      # '@description Conditions given as query parameters or QuerySpec JSON
      # '@return \code{ integer }
      count_http_post_json1 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/multimedia/count"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- integer$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find2
      # '@title Find a multimedia document by id
      # '@description If found, returns a single multimedia document
      # '@return \code{ MultiMediaObject }
      find2 = function(id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/find/{id}"
      if (!missing(`id`)) {
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MultiMediaObject$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name find_by_ids2
      # '@title Find multimedia document by ids
      # '@description Given multiple ids, returns a list of multimedia documents
      # '@return \code{ MultiMediaObject }
      find_by_ids2 = function(ids, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/findByIds/{ids}"
      if (!missing(`ids`)) {
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MultiMediaObject$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_distinct_values_http_get1
      # '@title Get all different values that can be found for one field
      # '@description A list of all fields for multimedia documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_get1 = function(field, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_distinct_values_http_post_json1
      # '@title Get all different values that exist for a field
      # '@description A list of all fields for multimedia documents can be retrieved with /metadata/getFieldInfo
      # '@return \code{ Specimen }
      get_distinct_values_http_post_json1 = function(field, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/multimedia/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_field_info1
      # '@title Returns extended information for each field of a multimedia document
      # '@description Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
      # '@return \code{ Specimen }
      get_field_info1 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/metadata/getFieldInfo"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_paths1
      # '@title Returns the full path of all fields within a document
      # '@description See also metadata/getFieldInfo for all allowed operators per field
      # '@return \code{ character }
      get_paths1 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/metadata/getPaths"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- character$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_settings2
      # '@title Get the value of an NBA setting
      # '@description All settings can be queried with /metadata/getSettings
      # '@return \code{ Specimen }
      get_settings2 = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/metadata/getSetting/{name}"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name get_settings3
      # '@title List all publicly available configuration settings for the NBA
      # '@description The value of a specific setting can be queried with metadata/getSetting/{name}
      # '@return \code{ Specimen }
      get_settings3 = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/metadata/getSettings"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name is_operator_allowed1
      # '@title Checks if a given operator is allowed for a given field
      # '@description See also metadata/getFieldInfo
      # '@return \code{ Specimen }
      is_operator_allowed1 = function(field, operator, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/multimedia/metadata/isOperatorAllowed/{field}/{operator}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      if (!missing(`operator`)) {
        urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Specimen$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name query_http_get1
      # '@title Query for multimedia documents
      # '@description Search for multimedia documents with query parameters or QuerySpec JSON string
      # '@return \code{ QueryResult }
      # '@param license: character; Example query param
      query_http_get1 = function(license, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`license`)) {
        param <- ifelse(typeof(`license`) == "environment", `license`$toJSONString(), `license`)    
        queryParams['license'] <- param
      }

      urlPath <- "/multimedia/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
      # '@name query_http_post_json1
      # '@title Query for multimedia documents
      # '@description Search for multimedia documents with query parameters or QuerySpec JSON string
      # '@return \code{ QueryResult }
      query_http_post_json1 = function(body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/multimedia/query"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- QueryResult$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
