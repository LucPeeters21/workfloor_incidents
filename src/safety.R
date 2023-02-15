library(haven)
library(dplyr)
library(car)
library(emmeans)
library(effectsize)
library(dataPreparation)
library(readxl)
library(stringr)
library(tidyr)
library(data.table)
library(tidyverse)
library(scales) 
library(stringr) 
library(Hmisc) 
library(forcats) 
library(ggthemes)

# import data
setwd("C:/Users/LPEE/OneDrive - Hoppenbrouwers Techniek B.V/Documenten/Projects/workfloor_incidents/data")
df <- read_excel("safetydata.xlsx")

# pie charts descriptive
location_table <-  table(df$`Injury Location`)
pie(location_table,labels=c("Abdomen","Arms", "Back", "Eye", "Feet", "Hands", "Head", "Legs", "Multiple", "Neck", "Trunk"))

gender_table <- table(df$Gender)
pie(gender_table, labels=c("Female", "Male"), main="Incident Ratio Between Gender")

