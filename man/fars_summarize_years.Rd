% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_functions.R
\name{fars_summarize_years}
\alias{fars_summarize_years}
\title{Summarizing accidents over multiple years}
\usage{
fars_summarize_years(years)
}
\arguments{
\item{years}{A numeric or character vector containing the years whose data
one wants to summarize.}
}
\value{
The function returns a tibble with a MONTH column plus one additional
column per (valid) year and one row per month. Each cell thus contains the
total number of accidents occured in the corresponding month and year. If a
certain year is not valid, a warning is generated (from inside the auxiliary
function \code{fars_read_years}) and no data from that year is included in
the returned tibble.
}
\description{
This function takes as argument a vector \code{years} containing the years
whose data one wants to summarize and returns a tibble summarizing the
number of accidents in each month of each year. The function uses the
\code{bind_rows}, \code{group_by}, \code{summarize} and \code{\%>\%}
functions, all from the \code{dplyr} package. It also uses the \code{spread}
function from the \code{tidyr} package.
}
\examples{
fars_summarize_years(c(2013, 2014, 2015))
fars_summarize_years(c("2013", "2014", "2015"))
fars_summarize_years(2013)
fars_summarize_years("2014")

}
