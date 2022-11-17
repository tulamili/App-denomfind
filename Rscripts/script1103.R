tmp <- read.delim ( "d2MM12") 
tmp$v <- tmp$v / 1e6
library(areaplot)
areaplot (x=tmp$d[t], y=tmp$v[t], las=1 ,lwd=1, col=rainbow(24)[12], xaxt="n",yaxt="n", xaxs="i", yaxs="i", xlab="",ylab="", add=F)
for (l in 1:12) { 
	k <- 13 - l 
	t<-(k*100-99):(k*100);
	#if ( k>1){ par(new=T) }
	areaplot (x=tmp$d[t], y=tmp$v[t], las=1 ,lwd=1, col=rainbow(24)[k+1], xaxt="n",yaxt="n", xaxs="i", yaxs="i", xlab="",ylab="", add=T)
}
axis(2,0:4/4,c("0%","25%","50%","75%","100%"),las=1,cex.axis=1.4)
axis(1,c(1,0:4*25),cex.axis=1.4)
library(matlab)
points( meshgrid( 0:4*25 , 0:4/4) , pch=3 ,cex=2)
points( meshgrid( 0:20*5 , 0:20/20) , pch=3 ,cex=0.6)
points( meshgrid( 0:100*1 , 0:100/100) , pch=3 ,cex=0.01)
#plot.new()
#---- ここまで 1

P <- array(NA,dim=c(100,100))
for (k in 1:100) { 
 p <- 1 
 for( d in 1:100) { P[k,d] <- p <- p * ( 1- (1e-2*d)^k) }   
}
for (k in 1:12) { 
	points ( 1:100, P[k,1:100], cex=0.2,type='l', lty=1 , col=rgb(0,0,0,0.4),lwd=2)
	points ( 1:100, P[k,1:100], cex=0.2,type='l', lty=2 , col=rgb(1,1,1,0.4),lwd=2)
}	

---- ここまで 2
	
#t1 <- ggplot(data = tmp , aes(x=d,y=v)) + geom_area ( mapping =  aes(x=d,y=v,fill=m)) 
t1 <- ggplot(data = tmp[1:100,] , aes(x=d,y=v)) + geom_area ( aes(group=m,fill=m), position=position_stack(vjust=-1,reverse=F))  + ylim ( c(0,100))
t12 <- ggplot(data = tmp[101:200,] , aes(x=d,y=v)) + geom_area ( aes(group=m,fill=m), position=position_stack(vjust=-1,reverse=F)) 
t12 <- ggplot(data = tmp[101:200,] , aes(x=d,y=v))
plot ( t12 )

#t1 <- ggplot(data = tmp , aes(x=d,y=v)) + geom_area (  aes(fill=m)) 
par(new=T); plot(tmp$d, tmp$v)

points ( 1:100, P[8,1:100] , xaxt="n",yaxt="n", xlab="",ylab="", cex=0.2,type='l', col="red")
axis(2,0:4/4,c("0%","25%","50%","75%","100%"),las=1,cex.axis=1.4)
axis(1,0:4*250,cex.axis=1.4)
for(k in 1:20){ points ( 1:1000, P[k,] , cex=0.2 , type="o") }
for(k in 1:4*5){ points ( 1:1000, P[k,] , cex=0.4 , type="o") }
for(k in 1:10*10){ points ( 1:1000, P[k,] , cex=0.2 , type="o") }
points( meshgrid( 0:4*25 , 0:4/4) , pch=3 ,cex=2)
points( meshgrid( 0:20*5 , 0:20/20) , pch=3 ,cex=0.6)
points( meshgrid( 0:100*1 , 0:100/100) , pch=3 ,cex=0.01)

