\name{vvply}
\alias{vvply}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 vvply
}
\description{
 vvply returns a vector of the same length as X, each element of which is the result of applying FUN to the corresponding element of X. It can fill na and apply arbitrary function like lapply,sapply,vapply or XXply in plyr package.
}
\usage{
vvply(X,FUN,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
     a vector or an expression object. Other objects (including classed objects) will be coerced by base::as.vector.
}

  \item{FUN}{
    the function to be applied to each element of X: see ‘Details’. In the case of functions like div(in this package) the function name must be backquoted or quoted.
}

  \item{...}{
    optional arguments to FUN.
}

}
\details{
%%  Non
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% Non
}
\author{
 DataXujing
}
\note{
%%  Non
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{

# not run
library(stringr)
vvply(X,FUN,...)
}
