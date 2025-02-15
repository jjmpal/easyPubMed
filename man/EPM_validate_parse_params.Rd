% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epm_all_fx_v01.R
\name{EPM_validate_parse_params}
\alias{EPM_validate_parse_params}
\title{Validate Parameters of a PubMed Record Parsing Job}
\usage{
EPM_validate_parse_params(params)
}
\arguments{
\item{params}{list of user-provided parameters.}
}
\value{
list including the vetted parameters.
}
\description{
Check and correct (if needed) the parameters of an easyPubMed
Record Parsing job.
}
\details{
The following elements are expected and/or parsed from the
`params` list:
\itemize{
\item{"max_authors"}{Numeric, maximum number of authors to retrieve. If this
is set to -1, only the last author is extracted. If this is set to 1, 
only the first author is returned. If this is set to 2, the first and the 
last authors are extracted. If this is set to any other positive 
number (i), up to the leading (i-1) authors are retrieved together with the 
last author. If this is set to a number larger than the number of authors in
a record, all authors are returned. Note that at least 1 author has to be
retrieved, therefore a value of 0 is not accepted (coerced to -1).}
\item{"autofill_address"}{Logical, shall author affiliations be 
propagated within each record to fill missing values.}
\item{"compact_output"}{Logical, shall record data be returned in a 
compact format where each row is a single record and author names are
collapsed together. If FALSE, each row corresponds to a single author of
the publication and the record-specific data are recycled for all included
authors. }
\item{"include_abstract"}{Logical, shall abstract text be included in the 
output data.frame.} 
\item{"max_references"}{Numeric, maximum number of references to return 
(from each PubMed record).}
\item{"ref_id_type"}{String, must be one of the
following values: c('pmid', 'doi')}
\item{"verbose"}{Logical, shall details about the 
progress of the operation be printed to console.}
}
}
\examples{

prms <- list(
  max_authors  = 12, 
  autofill_address = TRUE, 
  compact_output = FALSE,
  include_abstract = TRUE, 
  max_references = 100, 
  ref_id_type = 'doi',
  verbose = TRUE)
easyPubMed:::EPM_validate_parse_params(prms)




}
\references{
\url{https://www.data-pulse.com/dev_site/easypubmed/}
}
\author{
Damiano Fantini, \email{damiano.fantini@gmail.com}
}
\keyword{internal}
