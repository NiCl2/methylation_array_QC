## This script pulls out the responsible plates from the main spreadsheet that is updated in the main study folder
## Arg inputs: 1) plates x, 2)plate y, 3)spreadsheet, 4)batch number, 5) person running QC
## Example: Rscript Formatting_SampleSheet.R 3 4 Sample_Sheet_OSHU.csv Batch2 Aisha_Dahir


args <- commandArgs(trailingOnly = TRUE)

# 
platex <- paste('Plate', as.integer(args[1]), sep = " ") 
platey <- paste('Plate', as.integer(args[2]), sep = " ") 
print(platex)
print(platey)

print('Reading Spreadsheet')
SampleSheet <- read.csv(args[3], header = F, stringsAsFactor = F)

print('Formatting Spreadsheet')
# Remove the guidance information in the first column rows 14-24
SampleSheet[14:24, 1] <- ""

# Remove extra headers that are not needed in QC
SampleSheet <- SampleSheet[-c(1,3),]

# Make new header
colnames(SampleSheet) <- SampleSheet[1,]
SampleSheet <- SampleSheet[-1,]

# Select the plates you want
SampleSheet <- SampleSheet[which(SampleSheet$Plate %in% c(platex, platey)),]

# Add the name of the person doing the QC to the Name_QC column
SampleSheet$Name_QC <- rep(as.character(args[5]), nrow(SampleSheet))

print('Saving Spreadsheet')
write.csv(SampleSheet, file = paste(args[4], paste('/Sample_Sheet_', as.character(args[4]),".csv", sep = ""), sep = ""), row.names  = FALSE)

source("mnt/data1/Array_Projects/Epic_methyltation_array_QC/SampleSheet_check.R")

SampleSheet_test(SampleSheet)
