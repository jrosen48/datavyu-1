% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dvfun.R
\name{r2datavyu}
\alias{r2datavyu}
\title{R data to Datavyu .csv file}
\usage{
r2datavyu(rlist, filename = "datavyur_export")
}
\arguments{
\item{rlist}{List of lists or data.frames. These are the columns to be used in the final Datavyu file.}

\item{filename}{Filename of the .csv file to be created. Leave off extension. May specify path as prefix.}
}
\description{
Process to transfer R data to Datavyu
}
\details{
Exports R data (as a list of lists or dataframes corresponding to Datavyu columns) to a .csv file. 
This can then be used by Datavyu for saving as .opf and importing R data Datvyu. 
Each list item is a different column in the final Datavyu file.
NOTE: Datavyu cannot currently import the .csv files this function creates.
To get the .csv file back into Datavyu, use the \code{csv2opf.rb} file found here: 
\url{http://github.com/iamamutt/datavyu/general}.
}
\examples{
# First get example data to use
example_data <- datavyu_dat()

# See how the example data is structured, as a list with another list and data.frame
# Both the list and data.frame are named. If not named, one will be assigned.
str(example_data)

# Export R list to a .csv file for importing into Datavyu
r2datavyu(example_data, "example_file")
}

