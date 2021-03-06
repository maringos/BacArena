% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Arena.R
\docType{methods}
\name{redEval}
\alias{redEval}
\alias{redEval,Eval-method}
\title{Function for reducing the size of an Eval object by collapsing the medium concentrations}
\usage{
redEval(object, time = "all")

\S4method{redEval}{Eval}(object, time = 1:length(object@medlist))
}
\arguments{
\item{object}{An object of class Eval.}

\item{time}{A number giving the simulation step of interest.}
}
\value{
Returns an object of class \code{Arena} containing the organisms and substance conditions in simulation step \code{time}.
}
\description{
The generic function \code{redEval} reduces the object size of an \code{Eval} object.
}
\details{
The function \code{redEval} can be used to reduce the size of an \code{Eval} object from a simulation step.
}
\examples{
data(Ec_core, envir = environment()) #get Escherichia coli core metabolic model
bac <- Bac(Ec_core,deathrate=0.05,
           minweight=0.05,growtype="exponential") #initialize a bacterium
arena <- Arena(n=20,m=20) #initialize the environment
arena <- addOrg(arena,bac,amount=10) #add 10 organisms
arena <- addSubs(arena,40) #add all possible substances
eval <- simEnv(arena,5)
eval_reduce <- redEval(eval,5)
}
\seealso{
\code{\link{Eval-class}} and \code{\link{Arena-class}}
}
