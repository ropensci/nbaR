# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

# Specimen client wrapper
# for nbaR.Specimen objects

#' @name specimen_count
#' @title Get the number of specimens matching a given condition
#' @description This is a wrapper function for count
#' from class nbaR.SpecimenClient.
#' @details Conditions given as query parameters or a querySpec JSON
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to count from class class nbaR.SpecimenClient
#' @export
specimen_count <- function(
                           queryParams = list(),
                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$count(
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_count_distinct_values
#' @title Count the distinct number of values that exist for a given field
#' @description This is a wrapper function for count_distinct_values
#' from class nbaR.SpecimenClient.
#' @details See also endpoint /getDistinctValues
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param field Name of field in the specimen object, type:
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to count_distinct_values from class class nbaR.SpecimenClient
#' @export
specimen_count_distinct_values <- function(
                                           field = NULL,
                                           queryParams = list(),
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$count_distinct_values(
    field,
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_count_distinct_values_per_group
#' @title Count the distinct number of field values that exist per the given field to group by
#' @description This is a wrapper function for count_distinct_values_per_group
#' from class nbaR.SpecimenClient.
#' @details See also endpoint /getDistinctValuesPerGroup
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param group Name of field in the specimen object you want to group by, type:
#' @param field Name of field in the specimen object, type:
#' @param ... additional parameters passed to count_distinct_values_per_group from class class nbaR.SpecimenClient
#' @export
specimen_count_distinct_values_per_group <- function(
                                                     group = NULL,
                                                     field = NULL,
                                                     ...) {
  sc <- SpecimenClient$new()
  res <- sc$count_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_download_query
#' @title Dynamic download service: Query for specimens and return result as a stream ...
#' @description This is a wrapper function for download_query
#' from class nbaR.SpecimenClient.
#' @details Query with query parameters or querySpec JSON. ...
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to download_query from class class nbaR.SpecimenClient
#' @export
specimen_download_query <- function(
                                    queryParams = list(),
                                    ...) {
  sc <- SpecimenClient$new()
  res <- sc$download_query(
    queryParams = queryParams,
    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name specimen_dwca_get_data_set
#' @title Download dataset as Darwin Core Archive File
#' @description This is a wrapper function for dwca_get_data_set
#' from class nbaR.SpecimenClient.
#' @details Available datasets can be queried with /specimen/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip
#' @family nbaR.SpecimenClient-wrappers

#' @param dataset name of dataset, type:
#' @param filename Filename to save results to, defaults to `format(Sys.time(),"download-%Y-%m-%dT%H:%m.zip")`
#' @param ... additional parameters passed to dwca_get_data_set from class class nbaR.SpecimenClient
#' @export
specimen_dwca_get_data_set <- function(
                                       dataset = NULL,
                                       filename = format(
                                         Sys.time(),
                                         "download-%Y-%m-%dT%H:%m.zip"
                                       ),
                                       ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_get_data_set(
    dataset,
    filename = filename,
    ...
  )
}
#' @name specimen_dwca_get_data_set_names
#' @title Retrieve the names of all available datasets
#' @description This is a wrapper function for dwca_get_data_set_names
#' from class nbaR.SpecimenClient.
#' @details Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to dwca_get_data_set_names from class class nbaR.SpecimenClient
#' @export
specimen_dwca_get_data_set_names <- function(
                                             ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_get_data_set_names(
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_dwca_query
#' @title Dynamic download service: Query for specimens and return result as Darwin Core Archive File
#' @description This is a wrapper function for dwca_query
#' from class nbaR.SpecimenClient.
#' @details Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip
#' @family nbaR.SpecimenClient-wrappers

#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param filename Filename to save results to, defaults to `format(Sys.time(),"download-%Y-%m-%dT%H:%m.zip")`
#' @param ... additional parameters passed to dwca_query from class class nbaR.SpecimenClient
#' @export
specimen_dwca_query <- function(
                                queryParams = list(),
                                filename = format(
                                  Sys.time(),
                                  "download-%Y-%m-%dT%H:%m.zip"
                                ),
                                ...) {
  sc <- SpecimenClient$new()
  res <- sc$dwca_query(
    queryParams = queryParams,
    filename = filename,
    ...
  )
}
#' @name specimen_exists
#' @title Returns whether or not a unitID for a specimen exists
#' @description This is a wrapper function for exists
#' from class nbaR.SpecimenClient.
#' @details Returns either true or false
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param unitID the unitID of the specimen to query, type:
#' @param ... additional parameters passed to exists from class class nbaR.SpecimenClient
#' @export
specimen_exists <- function(
                            unitID = NULL,
                            ...) {
  sc <- SpecimenClient$new()
  res <- sc$exists(
    unitID,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_find
#' @title Find a specimen by id
#' @description This is a wrapper function for find
#' from class nbaR.SpecimenClient.
#' @details If found, returns a single specimen
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param id id of specimen, type:
#' @param ... additional parameters passed to find from class class nbaR.SpecimenClient
#' @export
specimen_find <- function(
                          id = NULL,
                          ...) {
  sc <- SpecimenClient$new()
  res <- sc$find(
    id,

    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name specimen_find_by_ids
#' @title Find specimens by ids
#' @description This is a wrapper function for find_by_ids
#' from class nbaR.SpecimenClient.
#' @details Given multiple ids, returns a list of specimen
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param ids ids of multiple specimen, separated by comma, type: character
#' @param ... additional parameters passed to find_by_ids from class class nbaR.SpecimenClient
#' @export
specimen_find_by_ids <- function(
                                 ids = NULL,
                                 ...) {
  sc <- SpecimenClient$new()
  res <- sc$find_by_ids(
    ids,

    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name specimen_find_by_unit_id
#' @title Find a specimen by unitID
#' @description This is a wrapper function for find_by_unit_id
#' from class nbaR.SpecimenClient.
#' @details Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param unitID the unitID of the specimen to query, type:
#' @param ... additional parameters passed to find_by_unit_id from class class nbaR.SpecimenClient
#' @export
specimen_find_by_unit_id <- function(
                                     unitID = NULL,
                                     ...) {
  sc <- SpecimenClient$new()
  res <- sc$find_by_unit_id(
    unitID,

    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name specimen_get_distinct_values
#' @title Get all different values that exist for a field
#' @description This is a wrapper function for get_distinct_values
#' from class nbaR.SpecimenClient.
#' @details A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param field Name of field in specimen object, type:
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to get_distinct_values from class class nbaR.SpecimenClient
#' @export
specimen_get_distinct_values <- function(
                                         field = NULL,
                                         queryParams = list(),
                                         ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_distinct_values(
    field,
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_distinct_values_per_group
#' @title Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by
#' @description This is a wrapper function for get_distinct_values_per_group
#' from class nbaR.SpecimenClient.
#' @details See also endpoint /getDistinctValues
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param group Name of field in the specimen object you want to group by, type:
#' @param field Name of field in the specimen object, type:
#' @param ... additional parameters passed to get_distinct_values_per_group from class class nbaR.SpecimenClient
#' @export
specimen_get_distinct_values_per_group <- function(
                                                   group = NULL,
                                                   field = NULL,
                                                   ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_field_info
#' @title Returns extended information for each field of a specimen document
#' @description This is a wrapper function for get_field_info
#' from class nbaR.SpecimenClient.
#' @details Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_field_info from class class nbaR.SpecimenClient
#' @export
specimen_get_field_info <- function(
                                    ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_field_info(
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_ids_in_collection
#' @title Retrieve all ids within a &#39;special collection&#39; of specimens
#' @description This is a wrapper function for get_ids_in_collection
#' from class nbaR.SpecimenClient.
#' @details Available collections can be queried with /getNamedCollections
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param name name of dataset, type:
#' @param ... additional parameters passed to get_ids_in_collection from class class nbaR.SpecimenClient
#' @export
specimen_get_ids_in_collection <- function(
                                           name = NULL,
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_ids_in_collection(
    name,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_named_collections
#' @title Retrieve the names of all &#39;special collections&#39; of specimens
#' @description This is a wrapper function for get_named_collections
#' from class nbaR.SpecimenClient.
#' @details See also here: http://bioportal.naturalis.nl/collecties
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_named_collections from class class nbaR.SpecimenClient
#' @export
specimen_get_named_collections <- function(
                                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_named_collections(
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_paths
#' @title Returns the full path of all fields within a document
#' @description This is a wrapper function for get_paths
#' from class nbaR.SpecimenClient.
#' @details See also metadata/getFieldInfo for all allowed operators per field
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_paths from class class nbaR.SpecimenClient
#' @export
specimen_get_paths <- function(
                               ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_paths(
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_setting
#' @title Get the value of an NBA setting
#' @description This is a wrapper function for get_setting
#' from class nbaR.SpecimenClient.
#' @details All settings can be queried with /metadata/getSettings
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param name name of setting, type:
#' @param ... additional parameters passed to get_setting from class class nbaR.SpecimenClient
#' @export
specimen_get_setting <- function(
                                 name = NULL,
                                 ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_setting(
    name,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_get_settings
#' @title List all publicly available configuration settings for the NBA
#' @description This is a wrapper function for get_settings
#' from class nbaR.SpecimenClient.
#' @details The value of a specific setting can be queried with metadata/getSetting/{name}
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param ... additional parameters passed to get_settings from class class nbaR.SpecimenClient
#' @export
specimen_get_settings <- function(
                                  ...) {
  sc <- SpecimenClient$new()
  res <- sc$get_settings(
    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_group_by_scientific_name
#' @title Aggregates Taxon and Specimen documents according to their scientific names
#' @description This is a wrapper function for group_by_scientific_name
#' from class nbaR.SpecimenClient.
#' @details Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to group_by_scientific_name from class class nbaR.SpecimenClient
#' @export
specimen_group_by_scientific_name <- function(
                                              queryParams = list(),
                                              ...) {
  sc <- SpecimenClient$new()
  res <- sc$group_by_scientific_name(
    queryParams = queryParams,
    ...
  )
  result <- .make_list_response(res)
  return(result)
}
#' @name specimen_is_operator_allowed
#' @title Checks if a given operator is allowed for a given field
#' @description This is a wrapper function for is_operator_allowed
#' from class nbaR.SpecimenClient.
#' @details See also metadata/getFieldInfo
#' @family nbaR.SpecimenClient-wrappers
#' @return scalar
#' @param field specimen document field, type:
#' @param operator operator, type:
#' @param ... additional parameters passed to is_operator_allowed from class class nbaR.SpecimenClient
#' @export
specimen_is_operator_allowed <- function(
                                         field = NULL,
                                         operator = NULL,
                                         ...) {
  sc <- SpecimenClient$new()
  res <- sc$is_operator_allowed(
    field,
    operator,

    ...
  )
  result <- res$content
  return(result)
}
#' @name specimen_query
#' @title Query for specimens
#' @description This is a wrapper function for query
#' from class nbaR.SpecimenClient.
#' @details Search for specimens (GET) using query parameters or a querySpec JSON
#' @family nbaR.SpecimenClient-wrappers
#' @return list
#' @param queryParams Named list or vector with names being the fields to be queried and values being the values to match
#' @param ... additional parameters passed to query from class class nbaR.SpecimenClient
#' @export
specimen_query <- function(
                           queryParams = list(),
                           ...) {
  sc <- SpecimenClient$new()
  res <- sc$query(
    queryParams = queryParams,
    ...
  )
  result <- .make_list_response(res)
  return(result)
}

#' @noRd
#' @param response Object of class Response
#' Internal function to convert all (nested) objects
#' in a response object to lists
.make_list_response <- function(response) {
  l <- response$content

  ## Handle return objects of class QueryResult
  if (class(l)[1] == "QueryResult") {
    l <- lapply(l$resultSet, function(x) x$item)
  }

  ## wrapper functions return lists instead of objects
  if (!is.list(l)) {
    result <- l$toList()
  } else {
    result <- lapply(
      l,
      function(x) if (is.object(x)) {
          x$toList()
        } else {
          x
        }
    )
  }

  return(result)
}
