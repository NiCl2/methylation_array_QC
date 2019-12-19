args = commandArgs(trailingOnly=TRUE)

SampleSheet <- read.csv(file = args[1], stringsAsFactors = FALSE)

SampleSheet_test <- function(SampleSheet){
  
SampleSheet$Sex <- as.factor(SampleSheet$Sex)
Sample_IDtest <- duplicated(SampleSheet$Sample_ID)
 
if(length(unique(Sample_IDtest)) == 1){
  print("Samples IDs are Unique")
} else{ 
  print("Sample IDs are not unique")}

for (i in 1:length(Sample_IDtest)){
 if(Sample_IDtest[i] == TRUE){
   print(paste("Sample ID not Unique at row number", i, sep = ""))
 } 
 }


for(i in 1:nrow(SampleSheet)){
  if(SampleSheet[i, "Sample_ID"] == "Meth_Control"){
    print(paste("Methylated control is on row", i, "at postion", pheno[i, "Basename"], sep = " "))
  }
}
  
  
  
for(i in 1:nrow(SampleSheet)){
     j = SampleSheet[i,"Sex"]
     if(j == 'M'){
     } else if(j == 'F'){
     } else {
       print(paste('Incorrect sex format at row', i, sep = " "))
     }
}

print(paste("The range of ages is", min(SampleSheet$Age, na.rm = TRUE), "to", max(SampleSheet$Age, na.rm = TRUE), sep= " "))

 }

SampleSheet_test(SampleSheet)

