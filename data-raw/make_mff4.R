# get the Fama-French data
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

fff.xts <- Quandl("KFRENCH/FACTORS_M",
	start_date="1927-01-31",end_date="2016-12-31",
	type="xts")

mom.xts <- Quandl("KFRENCH/MOMENTUM_M",
	start_date="1927-01-31",end_date="2016-12-31",
	type="xts")
colnames(mom.xts) <- c("UMD")

ff4.xts <- cbind(fff.xts[,c("SMB","HML","RF")],mom.xts)
ff4.xts$Mkt <- fff.xts[,"Mkt-RF"] + fff.xts[,"RF"]
# re-sort
mff4 <- ff4.xts[,c("Mkt","SMB","HML","UMD","RF")]

usethis::use_data(mff4,overwrite=TRUE)

#for vim modeline: (do not edit)
# vim:fdm=marker:fmr=FOLDUP,UNFOLD:cms=#%s:syn=r:ft=r:nu
