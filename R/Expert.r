# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Expert Class
#'
#'
#'
#' @field agentText  character
#'
#' @field fullName  character
#'
#' @field organization  Organization
#'
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
#'   Constructor Expert object.
#'
#' }
#' \item{\code{$fromList(ExpertList)}}{
#'
#'   Create Expert object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Expert.
#'
#' }
#' \item{\code{fromJSONString(ExpertJson)}}{
#'
#'   Create Expert object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Expert.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Expert <- R6::R6Class(
  "Expert",
  public = list(
    `agentText` = NULL,
    `fullName` = NULL,
    `organization` = NULL,
    initialize = function(
                              `agentText`,
                              `fullName`,
                              `organization`) {
      if (!missing(`agentText`)) {
        stopifnot(
          is.character(`agentText`),
          length(`agentText`) == 1
        )
        self[["agentText"]] <- `agentText`
      }
      if (!missing(`fullName`)) {
        stopifnot(
          is.character(`fullName`),
          length(`fullName`) == 1
        )
        self[["fullName"]] <- `fullName`
      }
      if (!missing(`organization`)) {
        stopifnot(R6::is.R6(`organization`))
        self[["organization"]] <- `organization`
      }
    },
    toList = function() {
      ExpertList <- list()
      if (!is.null(self[["agentText"]])) {
        ExpertList[["agentText"]] <-
          self[["agentText"]]
      }
      if (!is.null(self[["fullName"]])) {
        ExpertList[["fullName"]] <-
          self[["fullName"]]
      }
      if (!is.null(self[["organization"]])) {
        ExpertList[["organization"]] <-
          self[["organization"]]$toList()
      }
      ## omit empty nested lists in returned list
      ExpertList[vapply(
        ExpertList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(ExpertList,
                            typeMapping = NULL) {
      self[["agentText"]] <-
        ExpertList[["agentText"]]
      self[["fullName"]] <-
        ExpertList[["fullName"]]
      self[["organization"]] <- Organization$new()$fromList(
        ExpertList[["organization"]],
        typeMapping = typeMapping
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
    fromJSONString = function(ExpertJson,
                                  typeMapping = NULL) {
      ExpertList <- jsonlite::fromJSON(
        ExpertJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(ExpertList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<Expert>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$agentText) == "environment") {
        cat("\tagentText:\tobject of class", paste0("<", class(self$agentText)[1], ">"), "\n")
      }
      else if (typeof(self$agentText) == "list") {
        cat("\tagentText:\tlist of length", length(self$agentText), "\n")
      }
      else {
        cat("\tagentText:\t", self$agentText, "\n")
      }
      if (typeof(self$fullName) == "environment") {
        cat("\tfullName:\tobject of class", paste0("<", class(self$fullName)[1], ">"), "\n")
      }
      else if (typeof(self$fullName) == "list") {
        cat("\tfullName:\tlist of length", length(self$fullName), "\n")
      }
      else {
        cat("\tfullName:\t", self$fullName, "\n")
      }
      if (typeof(self$organization) == "environment") {
        cat("\torganization:\tobject of class", paste0("<", class(self$organization)[1], ">"), "\n")
      }
      else if (typeof(self$organization) == "list") {
        cat("\torganization:\tlist of length", length(self$organization), "\n")
      }
      else {
        cat("\torganization:\t", self$organization, "\n")
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
