% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/operation_setunion.R
\name{setunion}
\alias{setunion}
\alias{+.Set}
\alias{|.Set}
\title{Union of Sets}
\usage{
setunion(..., simplify = TRUE)

\method{+}{Set}(x, y)

\method{|}{Set}(x, y)
}
\arguments{
\item{...}{\link{Set}s}

\item{simplify}{logical, if \code{TRUE} (default) returns the result in its simplest (unwrapped) form, usually a \code{Set},
otherwise a \code{UnionSet}.}

\item{x, y}{\link{Set}}
}
\value{
An object inheriting from \link{Set} containing the union of supplied sets.
}
\description{
Returns the union of objects inheriting from class \link{Set}.
}
\details{
The union of \eqn{N} sets, \eqn{X1, ..., XN}, is defined as the set of elements that exist
in one or more sets,
\deqn{U = \{x : x \epsilon X1 \quad or \quad x \epsilon X2 \quad or \quad...\quad or \quad x \epsilon XN\}}{U = {x : x \epsilon X1 or x \epsilon X2 or ... or x \epsilon XN}}

The union of multiple \link{ConditionalSet}s is given by combining their defining functions by an
'or', \code{|}, operator. See examples.

The union of fuzzy and crisp sets first coerces fuzzy sets to crisp sets by finding their support.
}
\examples{
# union of Sets

Set$new(-2:4) + Set$new(2:5)
setunion(Set$new(1, 4, "a"), Set$new("a", 6))
Set$new(1, 2) + Set$new("a", 1i) + Set$new(9)

# union of intervals

Interval$new(1, 10) + Interval$new(5, 15) + Interval$new(20, 30)
Interval$new(1, 2, type = "()") + Interval$new(2, 3, type = "(]")
Interval$new(1, 5, class = "integer") +
  Interval$new(2, 7, class = "integer")

# union of mixed types

Set$new(1:10) + Interval$new(5, 15)
Set$new(1:10) + Interval$new(5, 15, class = "integer")
Set$new(5, 7) | Tuple$new(6, 8, 7)

# union of FuzzySet
FuzzySet$new(1, 0.1, 2, 0.5) + Set$new(2:5)

# union of conditional sets

ConditionalSet$new(function(x, y) x >= y) +
  ConditionalSet$new(function(x, y) x == y) +
  ConditionalSet$new(function(x) x == 2)

# union of special sets
PosReals$new() + NegReals$new()
Set$new(-Inf, Inf) + Reals$new()
}
\seealso{
Other operators: 
\code{\link{powerset}()},
\code{\link{setcomplement}()},
\code{\link{setintersect}()},
\code{\link{setpower}()},
\code{\link{setproduct}()},
\code{\link{setsymdiff}()}
}
\concept{operators}
