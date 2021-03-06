% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GoldenCheetahOpenData-package.R,
%   R/db_management.R
\name{exist_in}
\alias{exist_in}
\alias{exist_in.gcod_db}
\title{Checks whether the workout archives referenced in the remote
perspective of a \code{gcod_db} exist in `local_dir'}
\usage{
exist_in(object, ...)

\method{exist_in}{gcod_db}(object, local_dir, ...)
}
\arguments{
\item{object}{an object of class \code{gcod_db}.}

\item{...}{currently not used.}

\item{local_dir}{the directory to check for the workout archives
for \code{athlete_id(object, perspective = "remote")}.}
}
\value{
A vector of the same length as \code{n_ids(object, perspective = "remote")}.
}
\description{
Checks whether the workout archives referenced in the remote
perspective of a \code{gcod_db} exist in `local_dir'
}
\examples{
\donttest{
ids007 <- get_athlete_ids(prefix = "007")
## Download the workouts for the first athlete in tempdir()
id <- subset(ids007, athlete_id(ids007) == athlete_id(ids007)[2])
id <- download_workouts(id)
## Only the workout archive for athlete_id(ids007)[2] from the ones
# in the remote perspective of ids007 exist in tempdir()
exist_in(ids007, tempdir())
}
}
