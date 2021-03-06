% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Stuff.R
\name{findFeeding3rep}
\alias{findFeeding3rep}
\title{Function for investigation of cross feeding patterns of replicate simulations}
\usage{
findFeeding3rep(simlist, time, mets, plot = TRUE, mfunction = "mean")
}
\arguments{
\item{simlist}{A list with objects of class Eval.}

\item{time}{A numeric vector giving the simulation steps which should be plotted.}

\item{mets}{Character vector of substance names which should be considered}

\item{plot}{Should the graph also be plotted?}

\item{mfunction}{Function by which the replicate simulations should be combined e.g. "mean" or "median"}
}
\value{
Graph (igraph)
}
\description{
The generic function \code{findFeeding3rep} investigates the cross feeding patterns of replicate simulations
}
