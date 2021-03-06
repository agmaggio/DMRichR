% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/globalStats.R
\name{globalStats}
\alias{globalStats}
\title{globalStats}
\usage{
globalStats(bsseq = bs.filtered.bsseq, testCovar = testCovariate,
  adjustCovar = adjustCovariate, matchCovar = matchCovariate)
}
\arguments{
\item{bsseq}{Smoothed bsseq object with design matrix in pData}

\item{testCovar}{The factor to test for differences between groups}

\item{adjustCovar}{The covariate(s) to adjust for between groups}

\item{matchCovar}{Another covariate to adjust for between groups (for dmrseq compatibility)}
}
\value{
A list of tibbles with smoothed global and chromosomal methylation statsitics
 and the values used for the tests
}
\description{
Computes the average smoothed global and chromosomal CpG methylation values
 for each sample and tests for differences between groups while adjusting for the provided covariates. 
 Global methylation differences are tested for using an ANOVA through the \code{\link[stats]{aov}} function.
 The chromosomal methylation differences are tested using pairwise comparisons calculated from
 contrasts of the factor of interest via the \code{\link[lsmeans]{lsmeans}} package.
}
\references{
\url{https://cran.r-project.org/web/packages/broom/vignettes/broom_and_dplyr.html}

\url{https://www.jstatsoft.org/article/view/v069i01/v69i01.pdf}
}
