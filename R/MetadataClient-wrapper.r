# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Metadata client wrapper
#' for nbaR.Metadata objects


metadata_get_allowed_date_formats <- function(
                                              ...) {
  sc <- MetadataClient$new()
  res <- sc$get_allowed_date_formats(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_controlled_list_phase_or_stage <- function(
                                                        ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_phase_or_stage(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_controlled_list_sex <- function(
                                             ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_sex(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_controlled_list_specimen_type_status <- function(
                                                              ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_specimen_type_status(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_controlled_list_taxonomic_status <- function(
                                                          ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_list_taxonomic_status(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_controlled_lists <- function(
                                          ...) {
  sc <- MetadataClient$new()
  res <- sc$get_controlled_lists(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_rest_services <- function(
                                       ...) {
  sc <- MetadataClient$new()
  res <- sc$get_rest_services(
    ...
  )
  result <- .make_list_response(res)
  return(result)
}
metadata_get_setting <- function(
                                 name = NULL,
                                 ...) {
  sc <- MetadataClient$new()
  res <- sc$get_setting(
    name,

    ...
  )
  result <- res$content
  return(result)
}
metadata_get_settings <- function(
                                  ...) {
  sc <- MetadataClient$new()
  res <- sc$get_settings(
    ...
  )
  result <- res$content
  return(result)
}
metadata_get_source_systems <- function(
                                        ...) {
  sc <- MetadataClient$new()
  res <- sc$get_source_systems(
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