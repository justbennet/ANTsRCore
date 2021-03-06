% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/antsrImageToImageMetric_class.R
\name{antsrImageToImageMetric.SetSampling}
\alias{antsrImageToImageMetric.SetSampling}
\title{antsrImageToImageMetric.SetSampling}
\usage{
antsrImageToImageMetric.SetSampling(metric, sampling.strategy,
  sampling.percentage)
}
\arguments{
\item{metric}{an 'antsrImageToImageMetric'}

\item{sampling.strategy}{sampling strategy, default if full sampling
\itemize{
  \item{none}{Full sampling}
  \item{random}{}
  \item{regular}{}
}}

\item{sampling.percentage}{percentage of data to sample when calculating metric}
}
\description{
set moving image mask for image to image metric
}
\note{
After calling this, must call antsrImageToImageMetric.Initialize(metric)
}
\examples{
x =  antsImageRead( getANTsRData( 'r16' ))
y =  antsImageRead( getANTsRData( 'r30' ))
metric = antsrImageToImageMetric.Create(x,y,type="MeanSquares")
antsrImageToImageMetric.SetSampling(metric,"random",0.4)
}
