# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QuerySpec Class
#'
#'
#'
#' @field constantScore  logical
#' @field fields  list(character)
#' @field conditions  list(QueryCondition)
#' @field logicalOperator  character
#' @field sortFields  list(SortField)
#' @field from  integer
#' @field size  integer
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor QuerySpec object.
#'
#' }
#' \item{\code{$fromList(QuerySpecList)}}{
#'
#'   Create QuerySpec object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of QuerySpec.
#'
#' }
#' \item{\code{fromJSONString(QuerySpecJson)}}{
#'
#'   Create QuerySpec object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of QuerySpec.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QuerySpec <- R6::R6Class(
  "QuerySpec",
  public = list(
    `constantScore` = NULL,
    `fields` = NULL,
    `conditions` = NULL,
    `logicalOperator` = NULL,
    `sortFields` = NULL,
    `from` = NULL,
    `size` = NULL,
    initialize = function(
                              `constantScore`,
                              `fields`,
                              `conditions`,
                              `logicalOperator`,
                              `sortFields`,
                              `from`,
                              `size`) {
      if (!missing(`constantScore`)) {
        self[["constantScore"]] <- `constantScore`
      }
      if (!missing(`fields`)) {
        stopifnot(
          is.list(`fields`),
          length(`fields`) != 0
        )
        lapply(
          `fields`,
          function(x) stopifnot(is.character(x))
        )
        self[["fields"]] <- `fields`
      }
      if (!missing(`conditions`)) {
        stopifnot(
          is.list(`conditions`),
          length(`conditions`) != 0
        )
        lapply(
          `conditions`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["conditions"]] <- `conditions`
      }
      if (!missing(`logicalOperator`)) {
        stopifnot(
          is.character(`logicalOperator`),
          length(`logicalOperator`) == 1
        )
        self[["logicalOperator"]] <- `logicalOperator`
      }
      if (!missing(`sortFields`)) {
        stopifnot(
          is.list(`sortFields`),
          length(`sortFields`) != 0
        )
        lapply(
          `sortFields`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["sortFields"]] <- `sortFields`
      }
      if (!missing(`from`)) {
        stopifnot(
          is.numeric(`from`),
          length(`from`) == 1
        )
        self[["from"]] <- `from`
      }
      if (!missing(`size`)) {
        stopifnot(
          is.numeric(`size`),
          length(`size`) == 1
        )
        self[["size"]] <- `size`
      }
    },
    toList = function() {
      QuerySpecList <- list()
      if (!is.null(self[["constantScore"]])) {
        QuerySpecList[["constantScore"]] <-
          self[["constantScore"]]
      }
      if (!is.null(self[["fields"]])) {
        QuerySpecList[["fields"]] <-
          self[["fields"]]
      }
      if (!is.null(self[["conditions"]])) {
        QuerySpecList[["conditions"]] <-
          lapply(self[["conditions"]], function(x) x$toList())
      }
      if (!is.null(self[["logicalOperator"]])) {
        QuerySpecList[["logicalOperator"]] <-
          self[["logicalOperator"]]
      }
      if (!is.null(self[["sortFields"]])) {
        QuerySpecList[["sortFields"]] <-
          lapply(self[["sortFields"]], function(x) x$toList())
      }
      if (!is.null(self[["from"]])) {
        QuerySpecList[["from"]] <-
          self[["from"]]
      }
      if (!is.null(self[["size"]])) {
        QuerySpecList[["size"]] <-
          self[["size"]]
      }
      ## omit empty nested lists in returned list
      QuerySpecList[vapply(
        QuerySpecList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(QuerySpecList,
                            typeMapping = NULL) {
      self[["constantScore"]] <-
        QuerySpecList[["constantScore"]]
      self[["fields"]] <-
        QuerySpecList[["fields"]]
      self[["conditions"]] <- lapply(
        QuerySpecList[["conditions"]],
        function(x) {
          QueryCondition$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["logicalOperator"]] <-
        QuerySpecList[["logicalOperator"]]
      self[["sortFields"]] <- lapply(
        QuerySpecList[["sortFields"]],
        function(x) {
          SortField$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["from"]] <-
        QuerySpecList[["from"]]
      self[["size"]] <-
        QuerySpecList[["size"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(QuerySpecJson,
                                  typeMapping = NULL) {
      QuerySpecList <- jsonlite::fromJSON(
        QuerySpecJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(QuerySpecList)
      invisible(self)
    }
  )
)
