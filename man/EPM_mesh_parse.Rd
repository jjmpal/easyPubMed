% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/epm_all_fx_v01.R
\name{EPM_mesh_parse}
\alias{EPM_mesh_parse}
\title{Parse and Format Pubmed MeSH terms.}
\usage{
EPM_mesh_parse(x)
}
\arguments{
\item{x}{String (character vector of length 1) including an XML Mesh
term field/section from a PubMed record.}
}
\value{
list including n=2 elements (character vectors): mesh_codes and 
mesh_terms.
}
\description{
Extract MeSH Information form a slice of a raw XML PubMed record. 
Both MeSH codes and MeSH terms are returned.
}
\examples{
msh <- paste0('<MeshHeading><DescriptorName UI=\"D000465\" >',
              'Algorithms</DescriptorName></MeshHeading>')
easyPubMed:::EPM_mesh_parse(msh)



}
\references{
\url{https://www.data-pulse.com/dev_site/easypubmed/}
}
\author{
Damiano Fantini, \email{damiano.fantini@gmail.com}
}
\keyword{internal}
