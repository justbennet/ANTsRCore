% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/antsrImageToImageMetric_class.R
\name{antsrImageToImageMetric.Create}
\alias{antsrImageToImageMetric.Create}
\title{antsrImageToImageMetric.Create}
\usage{
antsrImageToImageMetric.Create(fixed, moving, type = c("MeanSquares",
  "MattesMutualInformation", "ANTSNeighborhoodCorrelation", "Correlation",
  "Demons", "JointHistogramMutualInformation"), fixed.mask = NA,
  moving.mask = NA, sampling.strategy = "none", sampling.percentage = 1)
}
\arguments{
\item{fixed}{the fixed antsImage}

\item{moving}{the moving antsImage}

\item{type}{image metric to calculate
\itemize{
  \item{MeanSquares}{}
  \item{Correlation}{}
  \item{ANTSNeighborhoodCorrelation}{}
  \item{MattesMutualInformation}{}
  \item{JointHistogramMutualInformation}{}
  \item{Demons}{}
}}

\item{fixed.mask}{mask for the fixed image}

\item{moving.mask}{mask for the moving image}

\item{sampling.strategy}{sampling strategy, default if full sampling
\itemize{
  \item{none}{Full sampling}
  \item{random}{}
  \item{regular}{}
}}

\item{sampling.percentage}{percentage of data to sample when calculating metric}
}
\value{
value of image to image metric
}
\description{
create object that measures similarity between two images
}
\examples{
x =  antsImageRead( getANTsRData( 'r16' ))
y =  antsImageRead( getANTsRData( 'r30' ))
metric = antsrImageToImageMetric.Create(x,y,type="MeanSquares")
}
