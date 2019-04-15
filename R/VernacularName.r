# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' VernacularName Class
#'
#'
#'
#' @field name  character
#' @field language  character
#' @field preferred  logical
#' @field references  list(Reference)
#' @field experts  list(Expert)
#'
#'
#' @format
#'
#' @usage
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor VernacularName object.
#'
#' }
#' \item{\code{$fromList(VernacularNameList)}}{
#'
#'   Create VernacularName object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of VernacularName.
#'
#' }
#' \item{\code{fromJSONString(VernacularNameJson)}}{
#'
#'   Create VernacularName object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of VernacularName.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VernacularName <- R6::R6Class(
  "VernacularName",
  public = list(
    `name` = NULL,
    `language` = NULL,
    `preferred` = NULL,
    `references` = NULL,
    `experts` = NULL,
    initialize = function(
                              `name`,
                              `language`,
                              `preferred`,
                              `references`,
                              `experts`) {
      if (!missing(`name`)) {
        stopifnot(
          is.character(`name`),
          length(`name`) == 1
        )
        self[["name"]] <- `name`
      }
      if (!missing(`language`)) {
        stopifnot(
          is.character(`language`),
          length(`language`) == 1
        )
        self[["language"]] <- `language`
      }
      if (!missing(`preferred`)) {
        self[["preferred"]] <- `preferred`
      }
      if (!missing(`references`)) {
        stopifnot(
          is.list(`references`),
          length(`references`) != 0
        )
        lapply(
          `references`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["references"]] <- unname(`references`)
      }
      if (!missing(`experts`)) {
        stopifnot(
          is.list(`experts`),
          length(`experts`) != 0
        )
        lapply(
          `experts`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["experts"]] <- unname(`experts`)
      }
    },
    toList = function() {
      VernacularNameList <- list()
      if (!is.null(self[["name"]])) {
        VernacularNameList[["name"]] <-
          self[["name"]]
      }
      if (!is.null(self[["language"]])) {
        VernacularNameList[["language"]] <-
          self[["language"]]
      }
      if (!is.null(self[["preferred"]])) {
        VernacularNameList[["preferred"]] <-
          self[["preferred"]]
      }
      if (!is.null(self[["references"]])) {
        VernacularNameList[["references"]] <-
          lapply(self[["references"]], function(x) x$toList())
      }
      if (!is.null(self[["experts"]])) {
        VernacularNameList[["experts"]] <-
          lapply(self[["experts"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      VernacularNameList[vapply(
        VernacularNameList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(VernacularNameList,
                            typeMapping = NULL) {
      self[["name"]] <-
        VernacularNameList[["name"]]
      self[["language"]] <-
        VernacularNameList[["language"]]
      self[["preferred"]] <-
        VernacularNameList[["preferred"]]
      self[["references"]] <- lapply(
        VernacularNameList[["references"]],
        function(x) {
          Reference$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["experts"]] <- lapply(
        VernacularNameList[["experts"]],
        function(x) {
          Expert$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
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
    fromJSONString = function(VernacularNameJson,
                                  typeMapping = NULL) {
      VernacularNameList <- jsonlite::fromJSON(
        VernacularNameJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(VernacularNameList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<VernacularName>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$name) == "environment") {
        cat("\tname:\tobject of class", paste0("<", class(self$name)[1], ">"), "\n")
      }
      else if (typeof(self$name) == "list") {
        cat("\tname:\tlist of length", length(self$name), "\n")
      }
      else {
        cat("\tname:\t", self$name, "\n")
      }
      if (typeof(self$language) == "environment") {
        cat("\tlanguage:\tobject of class", paste0("<", class(self$language)[1], ">"), "\n")
      }
      else if (typeof(self$language) == "list") {
        cat("\tlanguage:\tlist of length", length(self$language), "\n")
      }
      else {
        cat("\tlanguage:\t", self$language, "\n")
      }
      if (typeof(self$preferred) == "environment") {
        cat("\tpreferred:\tobject of class", paste0("<", class(self$preferred)[1], ">"), "\n")
      }
      else if (typeof(self$preferred) == "list") {
        cat("\tpreferred:\tlist of length", length(self$preferred), "\n")
      }
      else {
        cat("\tpreferred:\t", self$preferred, "\n")
      }
      if (typeof(self$references) == "environment") {
        cat("\treferences:\tobject of class", paste0("<", class(self$references)[1], ">"), "\n")
      }
      else if (typeof(self$references) == "list") {
        cat("\treferences:\tlist of length", length(self$references), "\n")
      }
      else {
        cat("\treferences:\t", self$references, "\n")
      }
      if (typeof(self$experts) == "environment") {
        cat("\texperts:\tobject of class", paste0("<", class(self$experts)[1], ">"), "\n")
      }
      else if (typeof(self$experts) == "list") {
        cat("\texperts:\tlist of length", length(self$experts), "\n")
      }
      else {
        cat("\texperts:\t", self$experts, "\n")
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
