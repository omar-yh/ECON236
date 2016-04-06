#### 04/06

install.packages('quantmod')
library(quantmod)


getSymbols("YHOO",src="google")
getSymbols("GOOG",src="yahoo")
getSymbols("DEXJPUS",src="FRED")

setSymbolLookup(YAHOO='google',GOOG='yahoo',DEXJPUS='FRED')
getSymbols(c('GOOG','YAHOO','DEXJPUS'))

getSymbols(c('GOOG','YAHOO','DEXJPUS'),from="2013-02-01",to="2015-02-01")

str(GOOG)
GOOG

lagtrial <- lag(GOOG$GOOG.Adjusted,k=5)
forwardtrial <- Next(GOOG$GOOG.Adjusted,k=5)

regresults <- lm(GOOG$GOOG.Adjusted~lagtrial)

plot(GOOG)
lines(lagtrial)
lines(forwardtrial)
plot(forwardtrial)

#####
