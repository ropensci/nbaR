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
#' # GroupByScientificNameQuerySpec$new()
#'
#' @format
#' R6 class
#'
#' @title GroupByScientificNameQuerySpec Class
#'
#' @description
#' For more information on the NBA object model, please refer to the
#' official NBA documentation at
#' \href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
#' the NBA model and endpoints reference at
#' \href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
#'
#' @details Model class for GroupByScientificNameQuerySpec objects.
#'
#'
#' @field constantScore  logical
#'        If true, no relevance scores will be calculated for the returned documents. By default Elasticsearch not only determines whether a document matches your search criteria, but also how well it matches them, expressed as a so-called relevance score. If you are not interested in relevance scores, set constantScore to true, as there is some performance overhead associated with calculating relevance scores.
#' @field fields  list(character)
#'        The fields to be returned. Specimen, Taxon and MultiMediaObject documents are large documents containing lots of fields. If you are only interested in a few fields, use the fields property to specify them.
#' @field conditions  list(QueryCondition)
#'        List of QueryCondition objetcs
#' @field logicalOperator  character
#'        (AND/OR) Specifies whether a document must satisfy all search criteria or just one in order to be returned.
#' @field sortFields  list(SortField)
#'        Specifies the field(s) on which to sort the documents.
#' @field from  integer
#'        The offset in the result set from which to return the documents.
#' @field size  integer
#'        The number of documents to return.
#' @field groupSort  character
#'
#' @field groupFilter  Filter
#'
#' @field specimensFrom  integer
#'
#' @field specimensSize  integer
#'
#' @field specimensSortFields  list(SortField)
#'
#' @field noTaxa  logical
#'
#'
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GroupByScientificNameQuerySpec object.
#'
#' }
#' \item{\code{$fromList(GroupByScientificNameQuerySpecList)}}{
#'
#'   Create GroupByScientificNameQuerySpec object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GroupByScientificNameQuerySpec.
#'
#' }
#' \item{\code{fromJSONString(GroupByScientificNameQuerySpecJson)}}{
#'
#'   Create GroupByScientificNameQuerySpec object from JSON.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GroupByScientificNameQuerySpec.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupByScientificNameQuerySpec <- R6::R6Class(
  "GroupByScientificNameQuerySpec",
  public = list(
    `constantScore` = NULL,
    `fields` = NULL,
    `conditions` = NULL,
    `logicalOperator` = NULL,
    `sortFields` = NULL,
    `from` = NULL,
    `size` = NULL,
    `groupSort` = NULL,
    `groupFilter` = NULL,
    `specimensFrom` = NULL,
    `specimensSize` = NULL,
    `specimensSortFields` = NULL,
    `noTaxa` = NULL,
    initialize = function(
                              `constantScore`,
                              `fields`,
                              `conditions`,
                              `logicalOperator`,
                              `sortFields`,
                              `from`,
                              `size`,
                              `groupSort`,
                              `groupFilter`,
                              `specimensFrom`,
                              `specimensSize`,
                              `specimensSortFields`,
                              `noTaxa`) {
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
        ## omit names as they should not be part of JSON representation
        self[["fields"]] <- unname(`fields`)
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
        ## omit names as they should not be part of JSON representation
        self[["conditions"]] <- unname(`conditions`)
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
        ## omit names as they should not be part of JSON representation
        self[["sortFields"]] <- unname(`sortFields`)
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
      if (!missing(`groupSort`)) {
        stopifnot(
          is.character(`groupSort`),
          length(`groupSort`) == 1
        )
        self[["groupSort"]] <- `groupSort`
      }
      if (!missing(`groupFilter`)) {
        stopifnot(R6::is.R6(`groupFilter`))
        self[["groupFilter"]] <- `groupFilter`
      }
      if (!missing(`specimensFrom`)) {
        stopifnot(
          is.numeric(`specimensFrom`),
          length(`specimensFrom`) == 1
        )
        self[["specimensFrom"]] <- `specimensFrom`
      }
      if (!missing(`specimensSize`)) {
        stopifnot(
          is.numeric(`specimensSize`),
          length(`specimensSize`) == 1
        )
        self[["specimensSize"]] <- `specimensSize`
      }
      if (!missing(`specimensSortFields`)) {
        stopifnot(
          is.list(`specimensSortFields`),
          length(`specimensSortFields`) != 0
        )
        lapply(
          `specimensSortFields`,
          function(x) stopifnot(R6::is.R6(x))
        )
        ## omit names as they should not be part of JSON representation
        self[["specimensSortFields"]] <- unname(`specimensSortFields`)
      }
      if (!missing(`noTaxa`)) {
        self[["noTaxa"]] <- `noTaxa`
      }
    },
    toList = function() {
      GroupByScientificNameQuerySpecList <- list()
      if (!is.null(self[["constantScore"]])) {
        GroupByScientificNameQuerySpecList[["constantScore"]] <-
          self[["constantScore"]]
      }
      if (!is.null(self[["fields"]])) {
        GroupByScientificNameQuerySpecList[["fields"]] <-
          self[["fields"]]
      }
      if (!is.null(self[["conditions"]])) {
        GroupByScientificNameQuerySpecList[["conditions"]] <-
          lapply(self[["conditions"]], function(x) x$toList())
      }
      if (!is.null(self[["logicalOperator"]])) {
        GroupByScientificNameQuerySpecList[["logicalOperator"]] <-
          self[["logicalOperator"]]
      }
      if (!is.null(self[["sortFields"]])) {
        GroupByScientificNameQuerySpecList[["sortFields"]] <-
          lapply(self[["sortFields"]], function(x) x$toList())
      }
      if (!is.null(self[["from"]])) {
        GroupByScientificNameQuerySpecList[["from"]] <-
          self[["from"]]
      }
      if (!is.null(self[["size"]])) {
        GroupByScientificNameQuerySpecList[["size"]] <-
          self[["size"]]
      }
      if (!is.null(self[["groupSort"]])) {
        GroupByScientificNameQuerySpecList[["groupSort"]] <-
          self[["groupSort"]]
      }
      if (!is.null(self[["groupFilter"]])) {
        GroupByScientificNameQuerySpecList[["groupFilter"]] <-
          self[["groupFilter"]]$toList()
      }
      if (!is.null(self[["specimensFrom"]])) {
        GroupByScientificNameQuerySpecList[["specimensFrom"]] <-
          self[["specimensFrom"]]
      }
      if (!is.null(self[["specimensSize"]])) {
        GroupByScientificNameQuerySpecList[["specimensSize"]] <-
          self[["specimensSize"]]
      }
      if (!is.null(self[["specimensSortFields"]])) {
        GroupByScientificNameQuerySpecList[["specimensSortFields"]] <-
          lapply(self[["specimensSortFields"]], function(x) x$toList())
      }
      if (!is.null(self[["noTaxa"]])) {
        GroupByScientificNameQuerySpecList[["noTaxa"]] <-
          self[["noTaxa"]]
      }
      ## omit empty nested lists in returned list
      GroupByScientificNameQuerySpecList[vapply(
        GroupByScientificNameQuerySpecList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GroupByScientificNameQuerySpecList,
                            typeMapping = NULL) {
      self[["constantScore"]] <-
        GroupByScientificNameQuerySpecList[["constantScore"]]
      self[["fields"]] <-
        GroupByScientificNameQuerySpecList[["fields"]]
      self[["conditions"]] <- lapply(
        GroupByScientificNameQuerySpecList[["conditions"]],
        function(x) {
          QueryCondition$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["logicalOperator"]] <-
        GroupByScientificNameQuerySpecList[["logicalOperator"]]
      self[["sortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["sortFields"]],
        function(x) {
          SortField$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["from"]] <-
        GroupByScientificNameQuerySpecList[["from"]]
      self[["size"]] <-
        GroupByScientificNameQuerySpecList[["size"]]
      self[["groupSort"]] <-
        GroupByScientificNameQuerySpecList[["groupSort"]]
      self[["groupFilter"]] <- Filter$new()$fromList(
        GroupByScientificNameQuerySpecList[["groupFilter"]],
        typeMapping = typeMapping
      )
      self[["specimensFrom"]] <-
        GroupByScientificNameQuerySpecList[["specimensFrom"]]
      self[["specimensSize"]] <-
        GroupByScientificNameQuerySpecList[["specimensSize"]]
      self[["specimensSortFields"]] <- lapply(
        GroupByScientificNameQuerySpecList[["specimensSortFields"]],
        function(x) {
          SortField$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["noTaxa"]] <-
        GroupByScientificNameQuerySpecList[["noTaxa"]]
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
    fromJSONString = function(GroupByScientificNameQuerySpecJson,
                                  typeMapping = NULL) {
      GroupByScientificNameQuerySpecList <- jsonlite::fromJSON(
        GroupByScientificNameQuerySpecJson,
        simplifyVector = FALSE
      )
      self <- self$fromList(GroupByScientificNameQuerySpecList)
      invisible(self)
    },
    print = function(...) {
      ## print class name
      cat("<GroupByScientificNameQuerySpec>\n")
      ## print all members with values
      cat("Fields:\n")
      if (typeof(self$constantScore) == "environment") {
        cat("\tconstantScore:\tobject of class", paste0("<", class(self$constantScore)[1], ">"), "\n")
      }
      else if (typeof(self$constantScore) == "list") {
        cat("\tconstantScore:\tlist of length", length(self$constantScore), "\n")
      }
      else {
        cat("\tconstantScore:\t", self$constantScore, "\n")
      }
      if (typeof(self$fields) == "environment") {
        cat("\tfields:\tobject of class", paste0("<", class(self$fields)[1], ">"), "\n")
      }
      else if (typeof(self$fields) == "list") {
        cat("\tfields:\tlist of length", length(self$fields), "\n")
      }
      else {
        cat("\tfields:\t", self$fields, "\n")
      }
      if (typeof(self$conditions) == "environment") {
        cat("\tconditions:\tobject of class", paste0("<", class(self$conditions)[1], ">"), "\n")
      }
      else if (typeof(self$conditions) == "list") {
        cat("\tconditions:\tlist of length", length(self$conditions), "\n")
      }
      else {
        cat("\tconditions:\t", self$conditions, "\n")
      }
      if (typeof(self$logicalOperator) == "environment") {
        cat("\tlogicalOperator:\tobject of class", paste0("<", class(self$logicalOperator)[1], ">"), "\n")
      }
      else if (typeof(self$logicalOperator) == "list") {
        cat("\tlogicalOperator:\tlist of length", length(self$logicalOperator), "\n")
      }
      else {
        cat("\tlogicalOperator:\t", self$logicalOperator, "\n")
      }
      if (typeof(self$sortFields) == "environment") {
        cat("\tsortFields:\tobject of class", paste0("<", class(self$sortFields)[1], ">"), "\n")
      }
      else if (typeof(self$sortFields) == "list") {
        cat("\tsortFields:\tlist of length", length(self$sortFields), "\n")
      }
      else {
        cat("\tsortFields:\t", self$sortFields, "\n")
      }
      if (typeof(self$from) == "environment") {
        cat("\tfrom:\tobject of class", paste0("<", class(self$from)[1], ">"), "\n")
      }
      else if (typeof(self$from) == "list") {
        cat("\tfrom:\tlist of length", length(self$from), "\n")
      }
      else {
        cat("\tfrom:\t", self$from, "\n")
      }
      if (typeof(self$size) == "environment") {
        cat("\tsize:\tobject of class", paste0("<", class(self$size)[1], ">"), "\n")
      }
      else if (typeof(self$size) == "list") {
        cat("\tsize:\tlist of length", length(self$size), "\n")
      }
      else {
        cat("\tsize:\t", self$size, "\n")
      }
      if (typeof(self$groupSort) == "environment") {
        cat("\tgroupSort:\tobject of class", paste0("<", class(self$groupSort)[1], ">"), "\n")
      }
      else if (typeof(self$groupSort) == "list") {
        cat("\tgroupSort:\tlist of length", length(self$groupSort), "\n")
      }
      else {
        cat("\tgroupSort:\t", self$groupSort, "\n")
      }
      if (typeof(self$groupFilter) == "environment") {
        cat("\tgroupFilter:\tobject of class", paste0("<", class(self$groupFilter)[1], ">"), "\n")
      }
      else if (typeof(self$groupFilter) == "list") {
        cat("\tgroupFilter:\tlist of length", length(self$groupFilter), "\n")
      }
      else {
        cat("\tgroupFilter:\t", self$groupFilter, "\n")
      }
      if (typeof(self$specimensFrom) == "environment") {
        cat("\tspecimensFrom:\tobject of class", paste0("<", class(self$specimensFrom)[1], ">"), "\n")
      }
      else if (typeof(self$specimensFrom) == "list") {
        cat("\tspecimensFrom:\tlist of length", length(self$specimensFrom), "\n")
      }
      else {
        cat("\tspecimensFrom:\t", self$specimensFrom, "\n")
      }
      if (typeof(self$specimensSize) == "environment") {
        cat("\tspecimensSize:\tobject of class", paste0("<", class(self$specimensSize)[1], ">"), "\n")
      }
      else if (typeof(self$specimensSize) == "list") {
        cat("\tspecimensSize:\tlist of length", length(self$specimensSize), "\n")
      }
      else {
        cat("\tspecimensSize:\t", self$specimensSize, "\n")
      }
      if (typeof(self$specimensSortFields) == "environment") {
        cat("\tspecimensSortFields:\tobject of class", paste0("<", class(self$specimensSortFields)[1], ">"), "\n")
      }
      else if (typeof(self$specimensSortFields) == "list") {
        cat("\tspecimensSortFields:\tlist of length", length(self$specimensSortFields), "\n")
      }
      else {
        cat("\tspecimensSortFields:\t", self$specimensSortFields, "\n")
      }
      if (typeof(self$noTaxa) == "environment") {
        cat("\tnoTaxa:\tobject of class", paste0("<", class(self$noTaxa)[1], ">"), "\n")
      }
      else if (typeof(self$noTaxa) == "list") {
        cat("\tnoTaxa:\tlist of length", length(self$noTaxa), "\n")
      }
      else {
        cat("\tnoTaxa:\t", self$noTaxa, "\n")
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
