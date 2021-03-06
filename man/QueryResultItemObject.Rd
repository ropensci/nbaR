% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QueryResultItemObject.r
\docType{class}
\name{QueryResultItemObject}
\alias{QueryResultItemObject}
\title{QueryResultItemObject Class}
\format{R6 class}
\usage{
# QueryResultItemObject$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for QueryResultItemObject objects. Contains an object returned from a QuerySpec query. Holds an item and a relevance score.
}
\section{Fields}{

\describe{
\item{\code{score}}{numeric}

\item{\code{item}}{list}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor QueryResultItemObject object.

}
\item{\code{$fromList(QueryResultItemObjectList)}}{

  Create QueryResultItemObject object from list.

}

\item{\code{$toList()}}{

  Get list representation of QueryResultItemObject.

}
\item{\code{fromJSONString(QueryResultItemObjectJson)}}{

  Create QueryResultItemObject object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of QueryResultItemObject.

}
}
}

\keyword{datasets}
