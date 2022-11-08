library( matlab)

for ( i in 1:10) { x <- read.delim(sprintf("d2m%02d",i),F)[,2] ; print ( max( subset ( x ,x <1) ) ) } 


logit <- function ( p ) { atanh ( p * 2 - 1 ) * 2  } # log (p/(1-p))
sigmoid <- function ( z ) { 1 / ( 1 + exp (-z) ) } # { ( tanh ( z / 2 ) + 1 ) / 2 } # 1 / ( 1 + exp (-z) ) 
ax <- c (0.1^(1:5),0.5,1-0.1^(1:5))
pp <- function(x){ gsum ( "0%","%",sprintf ("%f%%" , x*100) )  }
draw <- function(v,c,a) { 
	hist(v,breaks=c(-20:60/2.5),border=rgb(0,0,0,0.25),probability=T,las=1,xlab="",ylab="",main="",xaxt="n",col=c,add=a,ylim=c(0,1),xlim=c(logit(1e-4),12)) 
	axis(1,12.5,1 )
	axis(1,logit(ax), pp(ax) )
}
for ( i in 1:10) { draw( pmax(-7,pmin(12.5,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , rainbow(20,v=0.8, alpha=0.7)[i], ifelse ( i==1 , F,T )  ) }


draw <- function(v,c,a) { 
	hist(plot=F,v,breaks = c(-40:120/5,100)) 
	#axis(1,logit(ax), ax)
}

par(new=F)
for ( i in 1:20 )  { 
  vv <- draw( pmax(-7,pmin(25,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , rainbow(20,v=0.8, alpha=0.7)[i], ifelse ( i==1 , F,T )  ) 
  plot(vv$breaks[1:length(vv$breaks)-1],vv$density,type="S",cex=0.3,xlim=c(-10,20),ylim=c(0,1),col=rainbow(20,v=0.8)[i],las=1,xlab="",ylab="",main="",xaxt="n",yaxs="i")
  if( T ) { axis(1,logit(ax), ax)}
  par(new=T)
}

