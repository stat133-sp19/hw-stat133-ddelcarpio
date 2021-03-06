% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_choose.R
\name{bin_choose}
\alias{bin_choose}
\title{Binomial Choose}
\usage{
bin_choose(n, k)
}
\arguments{
\item{n}{Number of trials}

\item{k}{Number of Sucessesfull Trials}
}
\value{
number of combinations in which k sucesses can occur in n trials
}
\description{
Calculates the number of combinations in which k successes can occur in n trials
}
\examples{
#How many ways to choose 2 successes from 5 trials?
example1 <- bin_choose(n=5,k=2)
#How many ways to choose 3 successes from 6 trials?
example2 <- bin_choose(n=6,k=3)
}
