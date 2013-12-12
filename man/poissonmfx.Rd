\name{poissonmfx}
\alias{poissonmfx}
\alias{print.poissonmfx}
\title{Marginal effects for a Poisson regression.}
\description{ 
This function estimates a Poisson regression model and calculates 
the corresponding marginal effects. 
}
\usage{
poissonmfx(formula, data, atmean = TRUE, robust = FALSE, 
           clustervar1 = NULL, clustervar2 = NULL)
}
\arguments{
\item{formula}{an object of class ``formula'' (or one that can be coerced to that class).}
  \item{data}{the data frame containing these data. This argument must be used.}
  \item{atmean}{default marginal effects represent the partial effects for the average observation. 
  If \code{atmean = FALSE} the function calculates average partial effects.
  }
  \item{robust}{if \code{TRUE} the function reports White/robust standard errors.
  }
  \item{clustervar1}{a character value naming the first cluster on which to adjust the standard errors.}
  \item{clustervar2}{a character value naming the second cluster on which to 
  adjust the standard errors for two-way clustering.}
}

\value{
\item{mfxest}{a coefficient matrix with columns containing the estimates, 
associated standard errors, test statistics and p-values.}
\item{dcvar}{a character vector containing the variable names where the marginal effect 
refers to the impact of a discrete change on the outcome. For example, a factor variable.}
\item{call}{the matched call.}

}

\seealso{
\code{\link{probitmfx}}, \code{\link{logitmfx}}, \code{\link{negbinmfx}}
}
\examples{

# simulate some data
set.seed(12345)
n = 1000
x = rnorm(n)

# poisson outcome
y = rpois(n, lambda = exp(1 + 0.5 * x))

data = data.frame(y,x)
poissonmfx(formula=y~x,data=data)

}
