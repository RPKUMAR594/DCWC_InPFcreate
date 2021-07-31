Stage_9 = function(M,D,Y){
n = length(M)
for(i in 1:n)
{
Jan = 31
Yr = Y[i]
if((Yr %% 4) == 0){
Feb = Jan + 29
}else{
Feb = Jan + 28
}
Mar = Feb+31
Apr = Mar+30
May = Apr+31
Jun = May+30
Jul = Jun+31
Aug = Jul+31
Sep = Aug+30
Oct = Sep+31
Nov = Oct+30
Dec = Nov+31
JD[i] = switch(M[i],"1" = D[i],		
"2" = Jan + D[i],
"3" = Feb + D[i],
"4" = Mar + D[i],
"5" = Apr + D[i], 
"6" = May + D[i],
"7" = Jun + D[i],
"8" = Jul + D[i],
"9" = Aug + D[i],
"10" = Sep + D[i],
"11" = Oct + D[i],
"12" = Nov + D[i])
}
return(JD)
}
