library( matlab)

#for ( i in 1:10) { x <- read.delim(sprintf("d2m%02d",i),F)[,2] ; print ( max( subset ( x ,x <1) ) ) } # 1未満の最大値を各ファイルについて求める
logit <- function ( p ) { atanh ( p * 2 - 1 ) * 2  } # log (p/(1-p))
sigmoid <- function ( z ) { 1 / ( 1 + exp (-z) ) } # { ( tanh ( z / 2 ) + 1 ) / 2 } # 1 / ( 1 + exp (-z) ) 

# 1枚目のヒストグラム
ax <- c (0.1^(1:3),0.5,1-0.1^(1:5))
pp <- function(x){ sub("[^0-9]%","%",sub("0+%","%",sprintf("%0.3f%%",x*100)))  }
draw <- function(v,c,a) { 
	hist(v,breaks=c(-(8*5):(24*5)/5),border=rgb(0,0,0,0.25),probability=T,las=1,xlab="",ylab="",main="",xaxt="n",col=c,add=a,ylim=c(0,1),xlim=c(logit(3e-4),12)) 
	axis(1,12.8,1 )
	axis(1,logit(ax), pp(ax) )
}
#for ( i in 1:8) { draw( pmax(-7,pmin(12.8,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , rainbow(8,v=0.8, alpha=0.7)[i], ifelse ( i==1 , F,T )  ) }
for ( i in 1:8) { draw( pmax(-7,pmin(12.8,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , topo.colors(9,alpha=1)[9-i+ifelse(i>4,0,1)], ifelse ( i==1 , F,T )  ) }
pp(0.1)
#"? hist

# 2枚目のヒストグラム

draw <- function(v,c,a) { 	hist(plot=F,v,breaks = c(-8:24,100)) }#c(-40:120/5,100)) }

par(new=F)
for ( i in 1:16 )  { 
  vv <- draw( pmax(-7,pmin(25,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , rainbow(20,v=0.8, alpha=0.7)[i], ifelse ( i==1 , F,T )  ) 
  #plot(vv$breaks[1:length(vv$breaks)-1],vv$density,type="S",cex=0.3,xlim=c(-10,20),ylim=c(0,1),col=rainbow(20,v=0.8)[i],las=1,xlab="",ylab="",main="",xaxt="n",yaxs="i")
  plot(vv$mid,vv$density,type="o",cex=0.6,ylim=c(0,0.6),xlim=c(logit(7e-4),12),col=rainbow(20,v=0.7)[i],las=1,xlab="",ylab="",main="",xaxt="n",yaxs="i",yaxt="n")
  if( i==16 ) { axis(1,logit(ax), pp(ax)) ; axis (2,0:2/4,c("0","0.25","0.5"),las=2)}
  par(new=T)
}
# --- 
# 翌日
ax <- c (0.1^(1:3),0.5,1-0.1^(1:6))
ax2 <- c (0.1^(1:3)%x%1:9,0.5,1-0.1^(1:6)%x%1:9)
par(new=F,mai=c(0.5,1.7,0.1,0.5))
plot(NA,xlab='',xaxt="n",xlim=c(2,50), ylim=c(-4,12),col=rainbow(15,v=0.8)[i],yaxt="n",ylab="") 
axis(1,c(2,10,20,30,40,50),cex.axis=2)
axis(2,logit(ax),pp(ax),cex.axis=2,las=1.5)
axis(4,-1:4*4,las=2,cex.axis=1.)
axis(4,-4:16,NA,las=2,cex.axis=1.)
abline(v=1:10*5,lwd=rep(c(0.2,0.4),5))
abline(h=logit(ax),lwd=0.4)
abline(h=logit(ax2),lwd=0.12)
for ( i in 1:12 ) {
  d2 <- read.delim(sprintf("d2m%02d",i),F) ; 
  x <- 2:50
  y <- tapply(d2[,2],d2[,1],mean) ; 
   #plot(x,logit(y),type="o",lwd=0.3,pch=20,xlab='',xaxt="n",ylim=c(-4,12),col=rainbow(12,v=0.8)[i],yaxt="n",ylab="") 
  #points(x,logit(y),type="o",lwd=1.2,pch=20,col=hcl.colors(20)[i]) # [3-(i%%3)]) 
  points(x,logit(y),type="o",lwd=ifelse(i%%3==0,3.0,0.8),pch=20,col=hcl.colors(12)[ifelse(i>12,12,i)]) # [3-(i%%3)]) 
}

