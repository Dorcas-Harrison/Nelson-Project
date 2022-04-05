library(YieldCurve)
library(tidyverse)
library(stats)
library(readxl)
library(tseries)
library(zoo)
library(xts)


maturity.oct <- c(2.0,3.0,5.0,7.0,10.0,30.0)
#average yield rate for October 
rate.oct <- c(1.551364,1.528182,1.525,1.615,1.706818,2.190455)
NSparameters <- Nelson.Siegel(rate = rate.oct, maturity = maturity.oct)

y = NSrates(NSparameters, maturity.oct)
plot(maturity.oct, rate.oct, xlim=c(0,30), ylim=c(1.5,2.2), xlab = "Maturity Years", ylab ="Average Rate", main = "Fitting Nelson-Siegel-Svensson Yield Curve", type = "o")
lines(maturity.oct,y, col =2)
legend(x ="topleft", legend = c("observed yield curve", "fitted yield curve"), col = c(1,2), lty=1)

