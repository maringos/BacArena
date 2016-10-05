% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Arena.R
\docType{methods}
\name{fluxVarSim}
\alias{fluxVarSim}
\alias{fluxVarSim,Eval-method}
\title{Function to compute flux variability analysis on an simulation object to get min/max of substance usage}
\usage{
fluxVarSim(object, rnd)

\S4method{fluxVarSim}{Eval}(object, rnd)
}
\arguments{
\item{object}{An object of class Eval.}

\item{rnd}{An integer giving the decimal place to which min/max flux should be rounded.}
}
\description{
The generic function \code{fluxVarSim} returns a list with the minimum and maximum substance usage of all individuals for each simulation step.
}
\details{
Returns a list with the minimum and maximum substance usage for each time point.
}
\examples{
data(Ec_core, envir = environment()) #get Escherichia coli core metabolic model
bac <- Bac(Ec_core,deathrate=0.05,
           minweight=0.05,growtype="exponential") #initialize a bacterium
arena <- Arena(n=20,m=20) #initialize the environment
arena <- addOrg(arena,bac,amount=10) #add 10 organisms
arena <- addSubs(arena,40) #add all possible substances
eval <- simEnv(arena,5)
fluxlist <- fluxVarSim(eval, 6)
}
\seealso{
\code{\link{Eval-class}} and \code{\link{simEnv}}
}
