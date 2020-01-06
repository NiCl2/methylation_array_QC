# Epic_methylation_array_QC


When submitting the sample sheet check needs to have arguments submitted along side, the argument is the "SampleSheet_Name.csv"

The Rmd both have parameters that need to be added in the shell script
look at which paramters need to be added in the YAML sectio nat the top of the Rmd document

to submitt the Rmd run this code in the shell

Rscript -e 'library(rmarkdown);rmarkdown::render("Name_of_Rmd.Rmd", params = list(Name = "Bipolar Study", SampleSheet = "SampleSheet_NCBI.csv", Mset = "NCBI_Mset.rdat", RGset = "NCBI_RGset.rdat"))'
