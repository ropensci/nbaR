% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SortField.r
\docType{class}
\name{SortField}
\alias{SortField}
\title{SortField Class}
\format{R6 class}
\usage{
# SortField$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for SortField objects.
}
\section{Fields}{

\describe{
\item{\code{path}}{character}

\item{\code{sortOrder}}{character}

\item{\code{ascending}}{logical}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor SortField object.

}
\item{\code{$fromList(SortFieldList)}}{

  Create SortField object from list.

}

\item{\code{$toList()}}{

  Get list representation of SortField.

}
\item{\code{fromJSONString(SortFieldJson)}}{

  Create SortField object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of SortField.

}
}
}

\keyword{datasets}
