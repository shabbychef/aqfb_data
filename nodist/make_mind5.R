#
# Created: 2014.03.12
# Copyright: Steven E. Pav, 2014
# Author: Steven E. Pav
# Comments: Steven E. Pav

suppressMessages({
	library(xts)
	library(Quandl)
	library(devtools)
})

ind5.xts <- Quandl("KFRENCH/5_IND_PORTF_M",
	start_date="1927-01-31",end_date="2017-07-31",
	type="xts")

mind5 <- ind5.xts['::2014-12-21',]

devtools::use_data(mind5,pkg='../',overwrite=TRUE)

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r
