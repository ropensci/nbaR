# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#'
#' @docType class
#'
#' @format R6 class
#'
#' @usage
#' # QueryResultItemObject$new()
#'
#' @format
#' R6 class
#'
#' @title QueryResultItemObject Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for QueryResultItemObject objects. Contains an object returned from a QuerySpec query. Holds an item and a relevance score.
#'
#'
#' @field score  numeric
#'
#' @field item  list
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor QueryResultItemObject object.
#'
#' }
#' \item{\code{$fromList(QueryResultItemObjectList)}}{
#'
#'   Create QueryResultItemObject object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of QueryResultItemObject.
#'
#' }
#' \item{\code{fromJSONString(QueryResultItemObjectJson)}}{
#'
#'   Create QueryResultItemObject object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of QueryResultItemObject.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResultItemObject <- R6::R6Class(
  "QueryResultItemObject",
  public = list(
    `score` = NULL,
    `item` = NULL,
    initialize = function(
                              `score`,
                              `item`) {
      if (!missing(`score`)) {
        stopifnot(
          is.numeric(`score`),
          length(`score`) == 1
        )
        self[["score"]] <- `score`
      }
      if (!missing(`item`)) {
        self[["item"]] <- `item`
      }
    },
    toList = function() {
      QueryResultItemObjectList <- list()
      if (!is.null(self[["score"]])) {
        QueryResultItemObjectList[["score"]] <-
          self[["score"]]
      }
      if (!is.null(self[["item"]])) {
        QueryResultItemObjectList[["item"]] <-
          self[["item"]]
      }
      ## omit empty nested lists in returned list
      QueryResultItemObjectList[vapply(
        QueryResultItemObjectList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(QueryResultItemObjectList,
                            typeMapping = NULL) {
      self[["score"]] <-
        QueryResultItemObjectList[["score"]]
      if (is.null(typeMapping[["item"]])) {
        self[["item"]] <-
          QueryResultItemObjectList[["item"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["item"]], "$new()")
        ))
        self[["item"]] <- obj$fromList(
          QueryResultItemObjectList[["item"]],
          typeMapping = typeMapping
        )
      }
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
    fromJSONString = function(QueryResultItemObjectJson,
                                  typeMapping = NULL) {
      QueryResultItemObjectList <- jsonlite::fromJSON(
        QueryResultItemObjectJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(QueryResultItemObjectList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<QueryResultItemObject>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$score) == "environment") {
        cat("\tscore:\tobject of class", paste0("<", class(self$score)[1], ">"), "\n")
      }
      else if (typeof(self$score) == "list") {
        cat("\tscore:\tlist of length", length(self$score), "\n")
      }
      else {
        cat("\tscore:\t", self$score, "\n")
      }
      if (typeof(self$item) == "environment") {
        cat("\titem:\tobject of class", paste0("<", class(self$item)[1], ">"), "\n")
      }
      else if (typeof(self$item) == "list") {
        cat("\titem:\tlist of length", length(self$item), "\n")
      }
      else {
        cat("\titem:\t", self$item, "\n")
      }
      ## print all methods
      cat("Methods:\n")
      cat("\tfromJSONString\n")
      cat("\ttoJSONString\n")
      cat("\tfromList\n")
      cat("\ttoList\n")
      cat("\tprint\n")
      invisible(self)
    }
  )
)
