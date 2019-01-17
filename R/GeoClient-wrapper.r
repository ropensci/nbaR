# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Geo client wrapper
#' for nbaR.Geo objects


geo_count <- function(
                      queryParams = list(),
                      ...) {
  sc <- GeoClient$new()
  res <- sc$count(
    queryParams = queryParams,
    ...
  )
  result <- res$content
  return(result)
}
geo_count_distinct_values <- function(
                                      field = NULL,
                                      ...) {
  sc <- GeoClient$new()
  res <- sc$count_distinct_values(
    field,

    ...
  )
  result <- res$content
  return(result)
}
geo_count_distinct_values_per_group <- function(
                                                group = NULL,
                                                field = NULL,
                                                ...) {
  sc <- GeoClient$new()
  res <- sc$count_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
geo_find <- function(
                     id = NULL,
                     ...) {
  sc <- GeoClient$new()
  res <- sc$find(
    id,

    ...
  )
  result <- .make_list_response(res)
  return(result)
}
geo_find_by_ids <- function(
                            ids = NULL,
                            ...) {
  sc <- GeoClient$new()
  res <- sc$find_by_ids(
    ids,

    ...
  )
  result <- .make_list_response(res)
  return(result)
}
geo_get_distinct_values <- function(
                                    field = NULL,
                                    ...) {
  sc <- GeoClient$new()
  res <- sc$get_distinct_values(
    field,

    ...
  )
  result <- res$content
  return(result)
}
geo_get_distinct_values_per_group <- function(
                                              group = NULL,
                                              field = NULL,
                                              ...) {
  sc <- GeoClient$new()
  res <- sc$get_distinct_values_per_group(
    group,
    field,

    ...
  )
  result <- res$content
  return(result)
}
geo_get_field_info <- function(
                               ...) {
  sc <- GeoClient$new()
  res <- sc$get_field_info(
    ...
  )
  result <- res$content
  return(result)
}
geo_get_geo_json_for_locality <- function(
                                          locality = NULL,
                                          ...) {
  sc <- GeoClient$new()
  res <- sc$get_geo_json_for_locality(
    locality,

    ...
  )
  result <- res$content
  return(result)
}
geo_get_paths <- function(
                          ...) {
  sc <- GeoClient$new()
  res <- sc$get_paths(
    ...
  )
  result <- res$content
  return(result)
}
geo_get_setting <- function(
                            name = NULL,
                            ...) {
  sc <- GeoClient$new()
  res <- sc$get_setting(
    name,

    ...
  )
  result <- res$content
  return(result)
}
geo_get_settings <- function(
                             ...) {
  sc <- GeoClient$new()
  res <- sc$get_settings(
    ...
  )
  result <- res$content
  return(result)
}
geo_is_operator_allowed <- function(
                                    field = NULL,
                                    operator = NULL,
                                    ...) {
  sc <- GeoClient$new()
  res <- sc$is_operator_allowed(
    field,
    operator,

    ...
  )
  result <- res$content
  return(result)
}
geo_query <- function(
                      queryParams = list(),
                      ...) {
  sc <- GeoClient$new()
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