# get the (daily) Fama-French data from Quandl
#
# Created: 2014.03.12
# Copyright: Steven E. Pav, 2014
# Author: Steven E. Pav
# Comments: Steven E. Pav

suppressMessages({
	library(xts)
	library(Quandl)
	library(devtools)
	library(usethis)
})

fff.xts <- Quandl("KFRENCH/FACTORS_D",
	start_date="1927-01-31",end_date="2016-12-31",
	type="xts")

mom.xts <- Quandl("KFRENCH/MOMENTUM_D",
	start_date="1927-01-31",end_date="2016-12-31",
	type="xts")
colnames(mom.xts) <- c("UMD")

dff4.xts <- cbind(fff.xts[,c("SMB","HML","RF")],mom.xts)
dff4.xts$Mkt <- fff.xts[,"Mkt-RF"] + fff.xts[,"RF"]
# re-sort
dff4 <- dff4.xts[,c("Mkt","SMB","HML","UMD","RF")]

usethis::use_data(dff4,overwrite=TRUE)

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r:nu
