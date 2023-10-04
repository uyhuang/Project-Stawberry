library(tidyverse)
library(tidyr)

#read data
strawberry <- read.csv("strawberry_oct4.csv",header = TRUE)
strawberry <- as.data.frame(strawberry)

strwb_census <- strawberry |> 
    filter(Program == "CENSUS")
strwb_survey <- strawberry |>
    filter(Program =="SURVEY")
vals <- strwb_census$Value
vals <- gsub("(D)", NA, vals)
