% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/operation_setsymdiff.R
\name{setsymdiff}
\alias{setsymdiff}
\alias{\%-\%}
\title{Symmetric Difference of Two Sets}
\usage{
setsymdiff(x, y, simplify = TRUE)

x \%-\% y
}
\arguments{
\item{x, y}{Set}

\item{simplify}{logical, if \code{TRUE} (default) returns the result in its simplest form, usually a \code{Set} or
\link{UnionSet}, otherwise a \code{ComplementSet}.}
}
\value{
An object inheriting from \code{Set} containing the symmetric difference of elements in both \code{x} and \code{y}.
}
\description{
Returns the symmetric difference of two objects inheriting from class \code{Set}.
}
\details{
The symmetric difference, aka disjunctive union, of two sets, \eqn{X, Y}, is defined as the set
of elements that exist in set \eqn{X} or in \eqn{Y} but not both,
\deqn{\{z : (z \epsilon X \cup z \epsilon Y) \\ \cap \\ \neg(z \epsilon X \cap z \epsilon Y)\}}{\{z : (z \epsilon X or z \epsilon Y) and !(z \epsilon X and z \epsilon Y)\}}

The symmetric difference can also be expressed as the union of two sets minus the intersection.
Therefore \code{setsymdiff} is written as a thin wrapper over these operations, so for two sets, \verb{A,B}: \cr
\code{A \%-\% B = (A | B) - (A & B)}.

The symmetric difference of fuzzy and crisp sets first coerces fuzzy sets to crisp sets by finding their support.
}
\examples{
# symmetrical difference compared to union and intersection
Set$new(1, 2, 3) \%-\% Set$new(3, 4)
(Set$new(1, 2, 3) | Set$new(3, 4)) - (Set$new(1, 2, 3) & Set$new(3, 4))

# ConditionalSets demonstrate the internal logic
ConditionalSet$new(function(x) x > 0) \%-\%
  ConditionalSet$new(function(y) y == 0)
}
\seealso{
Other operators: 
\code{\link{powerset}()},
\code{\link{setcomplement}()},
\code{\link{setintersect}()},
\code{\link{setpower}()},
\code{\link{setproduct}()},
\code{\link{setunion}()}
}
\concept{operators}
