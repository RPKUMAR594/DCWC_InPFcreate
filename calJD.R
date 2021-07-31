JD_Cal_File = read.csv(file.choose(),header = TRUE,sep = ",")
#This Function will Calculate Julian Days based on Date of Sowing and date of 
#Phenological Stage.
#It require ".CSV" file in the format of "Month,Date,Year..." for DOS and 
#Phenological Stages
#the output will be printed on to file, file name: JD_Values.csv
#file.choose()
##Initialization of variables
DOS = 0;JD = 0;
##Calcualting number of rows(nR) and columns(nC) 
nR = nrow(JD_Cal_File)
nC = ncol(JD_Cal_File)
##Calculating Julian Days
#Calculating date of sowing
M = JD_Cal_File[,2] 		#considering month from given file
D = JD_Cal_File[,3]		#considering Day from given file
Y = JD_Cal_File[,4]		#considering Year from given file
#opening file to sink the results with
sink("JD_Values.csv")
#calling dosJDCal.R function to calculate Julian day of DOS
Result = dosJDCal(M,D,Y)
print("Julian Day of Date Of Sowing:")
for(i in 1:nR){
DOS[i] = Result[i]
}
DOS = matrix(nrow = nR, ncol = 1, data = DOS, byrow = TRUE)
#printing Julian Day of DOS on to file 
print(DOS)
#Calculting total number of stages
X = (nC - 4)/3
#printing Number of stages on to file
print(paste("Total Number of Stages:", X))
for(i in 1:X){
Stage_Val = Stage_Case(i)
#printing stage value on to file
print(paste("Stage_",i))
Stage_Val = matrix(nrow = nR, ncol = 1, data = Stage_Val, byrow = TRUE)
#printing Julian day of each stage on to file
print(Stage_Val)
}
sink()
#CLossing all connections including the opened file
closeAllConnections()