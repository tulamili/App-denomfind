library( matlab)

logit <- function ( p ) { atanh ( p * 2 - 1 ) * 2  } # log (p/(1-p))
sigmoid <- function ( z ) { 1 / ( 1 + exp (-z) ) } # { ( tanh ( z / 2 ) + 1 ) / 2 } # 1 / ( 1 + exp (-z) ) 
ax <- c (0.1^(1:5),0.5,1-0.1^(1:6))
draw <- function(v,c,a) { 
	hist ( v, breaks = c(-20:40/2.5), border=rgb(0,0,0,0.5),  probability= T , las=1, xlab="" ,ylab="", main = "" , xaxt="n" , col=c , add=a, ylim=c(0,2)) 
	axis(1,logit(ax), ax)
}
for ( i in 1:11) { draw( pmax(-7,pmin(15,logit(  read.delim(sprintf("d2m%02d",i),F)[,2] ))) , rainbow(12,v=0.8, alpha=0.7)[i], ifelse ( i==1 , F,T )  ) }

? sprintf