f2 <- read.delim ( "d2-1e6.tsv")
#plot ( 1:100,  f2$v0 , type ="o", cex=0.4)
dev.new()
plot ( 1:100,  f2$v0 , type ="o", cex=0.4)
points ( 1:100,  f2$v0 /1e6 , type ="o", cex=0.4,col="red")

P <- array(NA,dim=c(100,100))
for (k in 1:100) { 
 p <- 1 
 for( d in 1:100) { P[k,d] <- p <- p * ( 1- (1e-2*d)^k) }   
}
 
plot ( 1:100, P[1,1:100] , xaxt="n",yaxt="n", xlab="",ylab="", cex=0.2,type='o')
axis(2,0:4/4,c("0%","25%","50%","75%","100%"),las=1,cex.axis=1.4)
axis(1,0:4*25,cex.axis=1.4)
for(k in 1:20){ points ( 1:100, P[k,] , cex=0.2 , type="o") }
for(k in 1:4*5){ points ( 1:100, P[k,] , cex=0.6 , type="o") }
for(k in 1:10*10){ points ( 1:100, P[k,] , cex=0.2 , type="o") }
points( meshgrid( 0:4*25 , 0:4/4) , pch=3 ,cex=2)
points( meshgrid( 0:20*5 , 0:20/20) , pch=3 ,cex=0.6)
points( meshgrid( 0:100*1 , 0:100/100) , pch=3 ,cex=0.04)
 


---

f3 <- read.delim ( "d3-1e5.tsv")
#plot ( 1:1000/1e3,  f3$v0/1e5 , type ="o", cex=0.3, lwd = 0.1 )
points ( 1:1000,  f3[,2]/1e5 , type ="o", cex=0.3, lwd = 0.1, col=4 )
points ( 1:1000,  f3[,3]/1e5 , type ="o", cex=0.3, lwd = 0.1, col="red" )


library(matlab)
 P <- array(NA,dim=c(100,1000))
for (k in 1:100) { 
 p <- 1 
 for( d in 1:1000) { P[k,d] <- p <- p * ( 1- (1e-3*d)^k) }   
}

plot ( 1:1000, P[1,1:1000] , xaxt="n",yaxt="n", xlab="",ylab="", cex=0.2,type='o')
axis(2,0:4/4,c("0%","25%","50%","75%","100%"),las=1,cex.axis=1.4)
axis(1,0:4*250,cex.axis=1.4)
for(k in 1:20){ points ( 1:1000, P[k,] , cex=0.2 , type="o") }
for(k in 1:4*5){ points ( 1:1000, P[k,] , cex=0.4 , type="o") }
for(k in 1:10*10){ points ( 1:1000, P[k,] , cex=0.2 , type="o") }
points( meshgrid( 0:4*250 , 0:4/4) , pch=3 ,cex=2)
points( meshgrid( 0:20*50 , 0:20/20) , pch=3 ,cex=0.6)
points( meshgrid( 0:100*10 , 0:100/100) , pch=3 ,cex=0.04)
 
