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

