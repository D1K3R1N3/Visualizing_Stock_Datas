library(quantmod)

getSymbols("PETKM.IS")
head(PETKM.IS)

bist100<- c("AFYON.IS","AKBNK.IS","AKSA.IS","AKSEN.IS","ALGYO.IS","ALARK.IS","ALBRK.IS","ANACM.IS","AEFES.IS",
            "ANELE.IS","ARCLK.IS","ASELS.IS","BERA.IS","BJKAS.IS","BIMAS.IS","CLEBI.IS","CEMAS.IS","CEMTS.IS",
            "CCOLA.IS","DEVA.IS","DOHOL.IS","ECILC.IS","ECZYT.IS","EGEEN.IS","EKGYO.IS","ENJSA.IS","ENKAI.IS",
            "EREGL.IS","FENER.IS","FLAP.IS","FROTO.IS","GARAN.IS","GENTS.IS","GEREL.IS","GLYHO.IS","GOLTS.IS",
            "GOODY.IS","GOZDE.IS","GSRAY.IS","GSDHO.IS","GUBRF.IS","SAHOL.IS","SAHOL.IS","HEKTS.IS","HURGZ.IS",
            "ICBCT.IS","IHLGM.IS","IHLAS.IS","INDES.IS","IPEKE.IS","ISGYO.IS","ISDMR.IS","ITTFH.IS","KRDMD.IS",
            "KARSN.IS","KARTN.IS","DGKLB.IS","KERVT.IS","KCHOL.IS","KORDS.IS","KOZAL.IS","KOZAA.IS","MAVI.IS",
            "METRO.IS","MGROS.IS","MPARK.IS","NTHOL.IS","NETAS.IS","ODAS.IS","OTKAR.IS","PRKME.IS","PARSN.IS",
            "PGSUS.IS","PETKM.IS","POLHO.IS","SASA.IS","SKBNK.IS","SISE.IS","SODA.IS","SOKM.IS","TATGD.IS",
            "TAVHL.IS","TKFEN.IS","THYAO.IS","TOASO.IS","TRKCM.IS","TSKB.IS","TMSN.IS","TUPRS.IS","TTKOM.IS",
            "TTRAK.IS","TCELL.IS","HALKB.IS","ISCTR.IS","ULKER.IS","VAKBN.IS","VERUS.IS","VESTL.IS","YKBNK.IS",
            "YATAS.IS","ZOREN.IS")
getSymbols(bist100)

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("white"))

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("black"))

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("white", up.col="darkolivegreen3", dn.col="firebrick2"))

addVolatility(col="orange")

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("black", up.col="white", dn.col="firebrick3"))

addVolatility(col="gold2")

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("black", up.col="green", dn.col="red"))

addBBands(n=10, sd=2, draw = "width")
addBBands(n=50, sd=4, draw = "percent")
addBBands(n=150, sd=6)

windows()
chartSeries(PETKM.IS, type = "candlestick", subset = "2020-03-01::2020-07-11", theme = chartTheme("white"))

addROC(n=1,type = "continuous", col="blue")
addROC(n=1,type = "discrete", col="red")


windows()
chartSeries(PETKM.IS, type = "line", subset = "2020-03-01::2020-07-11", theme = chartTheme("black", up.col="white", dn.col="firebrick3"))

addZigZag(col="purple")
addSMA()