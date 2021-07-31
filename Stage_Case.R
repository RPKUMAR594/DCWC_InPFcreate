#' @export
Stage_Case = function(X){
#This will give output as JD value
S = switch(X,
		"1" = {M = JD_Cal_File[,5]; D = JD_Cal_File[,6]
			 Y = JD_Cal_File[,7]; Stage_1(M,D,Y)},		
		"2" = {M = JD_Cal_File[,8]; D = JD_Cal_File[,9]
			 Y = JD_Cal_File[,10]; Stage_2(M,D,Y)},
		"3" = {M = JD_Cal_File[,11]; D = JD_Cal_File[,12]
			 Y = JD_Cal_File[,13]; Stage_3(M,D,Y)},
		"4" = {M = JD_Cal_File[,14]; D = JD_Cal_File[,15]
			 Y = JD_Cal_File[,16]; Stage_4(M,D,Y)},
		"5" = {M = JD_Cal_File[,17]; D = JD_Cal_File[,18]
			 Y = JD_Cal_File[,19]; Stage_5(M,D,Y)}, 
		"6" = {M = JD_Cal_File[,20]; D = JD_Cal_File[,21]
			 Y = JD_Cal_File[,22]; Stage_6(M,D,Y)},
		"7" = {M = JD_Cal_File[,23]; D = JD_Cal_File[,24]
			 Y = JD_Cal_File[,25]; Stage_7(M,D,Y)},
		"8" = {M = JD_Cal_File[,26]; D = JD_Cal_File[,27]
			 Y = JD_Cal_File[,28]; Stage_8(M,D,Y)},
		"9" = {M = JD_Cal_File[,29]; D = JD_Cal_File[,30]
			 Y = JD_Cal_File[,31]; Stage_9(M,D,Y)},
		"10" = {M = JD_Cal_File[,32]; D = JD_Cal_File[,33]
			  Y = JD_Cal_File[,34]; Stage_10(M,D,Y)},
		"11" = {M = JD_Cal_File[,35]; D = JD_Cal_File[,36]
			  Y = JD_Cal_File[,37]; Stage_11(M,D,Y)},
		"12" = {M = JD_Cal_File[,38]; D = JD_Cal_File[,39]
			  Y = JD_Cal_File[,40]; Stage_12(M,D,Y)})
return(S)
}
