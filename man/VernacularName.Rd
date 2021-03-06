% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VernacularName.r
\docType{class}
\name{VernacularName}
\alias{VernacularName}
\title{VernacularName Class}
\format{R6 class}
\usage{
# VernacularName$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for VernacularName objects.
}
\section{Fields}{

\describe{
\item{\code{name}}{character}

\item{\code{language}}{character}

\item{\code{preferred}}{logical}

\item{\code{references}}{list(Reference)}

\item{\code{experts}}{list(Expert)}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor VernacularName object.

}
\item{\code{$fromList(VernacularNameList)}}{

  Create VernacularName object from list.

}

\item{\code{$toList()}}{

  Get list representation of VernacularName.

}
\item{\code{fromJSONString(VernacularNameJson)}}{

  Create VernacularName object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of VernacularName.

}
}
}

\keyword{datasets}
