# Epic_methylation_array_QC


When submitting the sample sheet check needs to have arguments submitted along side, the argument is the "SampleSheet_Name.csv"

The Rmd both have parameters that need to be added in the shell script
look at which paramters need to be added in the YAML sectio nat the top of the Rmd document

to submitt the Rmd run this code in the shell

Rscript -e 'library(rmarkdown);rmarkdown::render("Name_of_Rmd.Rmd", params = list(Name = "Bipolar Study", SampleSheet = "SampleSheet_NCBI.csv", Mset = "NCBI_Mset.rdat", RGset = "NCBI_RGset.rdat"))'

# Technical QC
Technical QC has 4 parameters 

Name: Study_Name
  SampleSheet: SampleSheet_Name.csv
  Mset: Mset_Name.rdat
  RGset: RGset_Name.rdat
  
  # Full QC
  Full QC has 9 
  Name: Name_Of_Study
  SampleSheet: SampleSheet.csv
  Mset: Mset_Name.rdat 
  RGset: RGset_Name.rdat
  IntensityThreshold: 1000
  Genotype: GenotypeTable.csv
  SamplesPassed: SamplesPassedQC.csv
  SamplesFailed: SamplesFailedQC.csv
  Normalised: Samples_Normalised.rdat
  
  intensity threshold has a default of a 1000 so if it is not specified in params it will be set to that
  You have to rename all the output files as the names you would like them to be saved as. 
