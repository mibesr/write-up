slda <- read.table('result.slda.S20.T10')
lda <- read.table('result.lda.T10')
lda.d <- read.table('result.lda_doc.T10')

subset <- seq(10, 500, length=9)
par(cex=1.2, cex.lab=1.2, cex.axis=1.2)
plot(1:500, seq(4200, 4900, length=500), type="n", xlab="No. Iteration", 
    ylab="Perplexity")
lines(slda[subset,], pch=1, type="b", lwd="2")
lines(lda[subset,], pch=4, type="b", lwd="2")
lines(lda.d[subset,], pch=5, type="b", lwd="2")
legend("topright", c("slda", "lda", "lda.doc"), pch=c(1, 4, 5), lwd=c(2, 2, 2), 
    cex=rep(1.2, 3), merge = TRUE)
