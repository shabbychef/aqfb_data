#
# This file is part of aqfb.data.
#
# aqfb.data is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
#
# The data in aqfb.data are not copyright by the maintainer of
# the package, and may not be freely available for redistribution.
# Check with your lawyer.

# Created: 2017.07.31
# Copyright: Steven E. Pav, 2017
# Author: Steven E. Pav <steven@gilgamath.com>
# Comments: Steven E. Pav

#' @title Daily Fama French 4 Factor Returns
#' @description The daily returns of the 4 Fama French Factors: Market, the cap factor SMB, 
#' the growth factor HML, and the momentum factor UMD.
#' @format An \code{xts} object with 23,715 observations and 5 columns. 
#' The data run from January, 1927 through December, 2016.
#' As in the upstream source, the data are given in \emph{percents}, meaning a
#' value of 1.00 corresponds to a 1\% movement.
#' Note also that returns presumably are \sQuote{simple} returns, not log
#' returns, though this is not clarified by the upstream source.
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{Mkt}}{The Market daily return. Note that the risk free rate has been added back
#'  to the excess returns published by the upstream source.}
#'  \item{\code{SMB}}{The cap factor daily return.}
#'  \item{\code{HML}}{The growth factor daily return.}
#'  \item{\code{UMD}}{The momentum factor daily return.}
#'  \item{\code{RF}}{The risk-free rate, presumably as an daily rate, though note that no corrections have been
#'  made for weekend effects when adding the risk-free rate back to the market
#'  rate.}
#' }
#' @source Kenneth French data library, via Quandl. 
#' See \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html},
#' data description at \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/Data_Library/f-f_factors.html},
#' and Quandl datasets \code{KFRENCH/FACTORS_D} and \code{KFRENCH/MOMENTUM_D}.
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @examples
#' \dontrun{
#' data(dff4)
#' str(dff4)
#' }
"dff4"

#' @title Monthly Fama French 4 Factor Returns
#' @description The monthly returns of the 4 Fama French Factors: Market, the cap factor SMB, 
#' the growth factor HML, and the momentum factor UMD.
#' @format An \code{xts} object with 1,080 observations and 5 columns. 
#' The data run from January, 1927 through December, 2016.
#' As in the upstream source, the data are given in \emph{percents}, meaning a
#' value of 1.00 corresponds to a 1\% movement.
#' Note also that returns presumably are \sQuote{simple} returns, not log
#' returns, though this is not clarified by the upstream source.
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{Mkt}}{The Market monthly return. Note that the risk free rate has been added back to the excess returns published by the upstream source.}
#'  \item{\code{SMB}}{The cap factor monthly return.}
#'  \item{\code{HML}}{The growth factor monthly return.}
#'  \item{\code{UMD}}{The momentum factor monthly return.}
#'  \item{\code{RF}}{The risk-free rate, presumably as a monthly rate. The average value is arround 0.28, corresponding to an annualized rate of around 3.3\%.}
#' }
#' @source Kenneth French data library, via Quandl. 
#' See \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html},
#' data description at \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/Data_Library/f-f_factors.html},
#' and Quandl datasets \code{KFRENCH/FACTORS_M} and \code{KFRENCH/MOMENTUM_M}.
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @examples
#' \dontrun{
#' data(mff4)
#' str(mff4)
#' }
"mff4"

#' @title Monthly Fama French 6 Factor Returns
#' @description The monthly returns of the 6 Fama French Factors: 
#' Market, 
#' the cap factor SMB, 
#' the growth factor HML, 
#' the momentum factor UMD,
#' the profitability factor RMW,
#' and the invesment factor CMA.
#'
#' @format An \code{xts} object with 642 observations and 7 columns. 
#' The data run from July, 1963 through December, 2016.
#' As in the upstream source, the data are given in \emph{percents}, meaning a
#' value of 1.00 corresponds to a 1\% movement.
#' Note also that returns presumably are \sQuote{simple} returns, not log
#' returns, though this is not clarified by the upstream source.
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{Mkt}}{The Market monthly return. Note that the risk free rate has been added back to the excess returns published by the upstream source.}
#'  \item{\code{SMB}}{The cap factor monthly return.}
#'  \item{\code{HML}}{The growth factor monthly return.}
#'  \item{\code{UMD}}{The momentum factor monthly return.}
#'  \item{\code{RMW}}{The profitability factor monthly return.}
#'  \item{\code{CMA}}{The investment factor monthly return.}
#'  \item{\code{RF}}{The risk-free rate, presumably as a monthly rate. The average value is arround 0.39, corresponding to an annualized rate of around 4.7\%.}
#' }
#' @source Kenneth French data library.
#' See \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html},
#' and data description at \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/Data_Library/f-f_5_factors_2x3.html}.
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @examples
#' \dontrun{
#' data(mff6)
#' str(mff6)
#' }
"mff6"

#' @title Daily VIX Close
#' @description The daily closing value of the CBOE VIX index.
#' @format An \code{xts} object with 6,802 observations and 1 columns. 
#' The data run from January, 1990 through December, 2016.
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{VIX}}{The closing value of the VIX index. 
#'  From January 2004 onward, the data are from the modern definition of the VIX index.
#'  The data from before 2004 are sourced from the back-computed data archive on CBOE.}
#' }
#' @source CBOE. See \url{http://www.cboe.com/products/vix-index-volatility/vix-options-and-futures/vix-index/vix-historical-data}.
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @examples
#' \dontrun{
#' data(dvix)
#' str(dvix)
#' }
"dvix"

#' @title Monthly Fama French 5 Industry Returns
#' @description The monthly returns of the 4 Fama French Factors: Market, the cap factor SMB, 
#' the growth factor HML, and the momentum factor UMD.
#' @format An \code{xts} object with 1,056 observations and 5 columns. 
#' The data run from January, 1927 through December, 2014.
#' As in the upstream source, the data are given in \emph{percents}, meaning a
#' value of 1.00 corresponds to a 1% movement.
#' Note also that returns presumably are \sQuote{simple} returns, not log
#' returns, though this is not clarified by the upstream source.
#' The columns are defined as follows:
#' \describe{
#'  \item{\code{Consumer}}{The monthly returns of the Consumer industry.}
#'  \item{\code{Manufacturing}}{The monthly returns of the Manufacturing industry.}
#'  \item{\code{Technology}}{The monthly returns of the Technology industry.}
#'  \item{\code{Healthcare}}{The monthly returns of the Healthcare industry.}
#'  \item{\code{Other}}{The monthly returns of the Other industry.}
#' }
#' @source Kenneth French data library, via Quandl. 
#' See \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html},
#' data description at \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/Data_Library/det_5_ind_port.html},
#' and Quandl datasets \code{KFRENCH/5_IND_PORTF_M}.
#' @author Steven E. Pav \email{steven@@gilgamath.com}
#' @examples
#' \dontrun{
#' data(mind5)
#' str(mind5)
#' }
"mind5"

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r