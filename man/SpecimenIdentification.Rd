% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SpecimenIdentification.r
\docType{class}
\name{SpecimenIdentification}
\alias{SpecimenIdentification}
\title{SpecimenIdentification Class}
\format{R6 class}
\usage{
# SpecimenIdentification$new()
}
\description{
For more information on the NBA object model, please refer to the
official NBA documentation at
\href{https://docs.biodiversitydata.nl}{https://docs.biodiversitydata.nl} and
the NBA model and endpoints reference at
\href{https://docs.biodiversitydata.nl/endpoints-reference}{https://docs.biodiversitydata.nl/endpoints-reference}.
}
\details{
Model class for SpecimenIdentification objects.
}
\section{Fields}{

\describe{
\item{\code{taxonRank}}{character}

\item{\code{scientificName}}{ScientificName}

\item{\code{typeStatus}}{character}

\item{\code{dateIdentified}}{character}

\item{\code{defaultClassification}}{DefaultClassification}

\item{\code{systemClassification}}{list(Monomial)}

\item{\code{vernacularNames}}{list(VernacularName)}

\item{\code{identificationQualifiers}}{list(character)}

\item{\code{identifiers}}{list(Agent)}

\item{\code{taxonomicEnrichments}}{list(TaxonomicEnrichment)}

\item{\code{preferred}}{logical}

\item{\code{verificationStatus}}{character}

\item{\code{rockType}}{character}

\item{\code{associatedFossilAssemblage}}{character}

\item{\code{rockMineralUsage}}{character}

\item{\code{associatedMineralName}}{character}

\item{\code{remarks}}{character}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor SpecimenIdentification object.

}
\item{\code{$fromList(SpecimenIdentificationList)}}{

  Create SpecimenIdentification object from list.

}

\item{\code{$toList()}}{

  Get list representation of SpecimenIdentification.

}
\item{\code{fromJSONString(SpecimenIdentificationJson)}}{

  Create SpecimenIdentification object from JSON.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of SpecimenIdentification.

}
}
}

\keyword{datasets}
