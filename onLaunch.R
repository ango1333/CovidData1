# Libraries and Data Setup

# Libraries
library(tidyverse)
library(readxl)
library(readr)
library(datasets)
library(stats)
library(utils)
library(stringr)
library(caret)

# Load Data
excelData = read_excel("Downloads/ViralInfectionAndRes-4382Chung_DATA_2021-08-05_1302.xlsx")
ViralInfection = data.frame(excelData)
nrow(ViralInfection) # 155127
ncol(ViralInfection) # 415
ncol(ViralInfection) * nrow(ViralInfection) # 64,377,705 total data points

# Refine Dataset

# Groups of independent and dependent variables (columns we are interested in)
indVar = ViralInfection[, c(
  "medications___4", # 1 = steroid, 0 = no steroid
  "if_yes_steroid_route_of_ad_v2", # For steroid recipients, 1 = Oral, 2 = IV, 3 = Inhaled
  "steroid_name_dose",
  "treatment_events___1",
  "treatment_events___2",
  "treatment_events___3",
  "treatment_events___4",
  "treatment_events___5",
  "treatment_events___6"
)]

depVar = ViralInfection[, c(
  "medications___4",
  "if_yes_steroid_route_of_ad_v2",
  "steroid_name_dose",
  "hospital_los",
  "is_patient_admitted_to_icu",
  "icu_los", # Only shown if is_patient_admitted_to_icu == 1
  "hosp_status",
  "icu_dischrg_status",
  "treatment_events___1",
  "treatment_events___2",
  "treatment_events___3",
  "treatment_events___4",
  "treatment_events___5",
  "treatment_events___6",
  "complications___11", # complications = Co- or secondary infection
  "oxygenation___1",
  "oxygenation___2",
  "oxygenation___3",
  "oxygenation___4",
  "oxygenation___5",
  "oxygenation___6",
  "oxygenation___9",
  "oxygenation___11",
  "oxygenation_other",
  "oxygenation_methods_2___0",
  "oxygenation_methods_2___1",
  "oxygenation_methods_2___2",
  "oxygenation_methods_2___3",
  "oxygenation_methods_2___4",
  "oxygenation_methods_2___5",
  "oxygenation_methods_2___6",
  "oxygenation_methods_2___7",
  "medications___3",
  "medications___9",
  "icu_level_care___4",
  "icu_level_care___5",
  "icu_level_care___8",
  "icu_level_care___11"
)]

# Select only columns we are interested in
viralTrim = data.frame(indVar, depVar)
nrow(subset(viralTrim, medications___4 == 1 | medications___4 == 0)) # 115929
ncol(subset(viralTrim, medications___4 == 1 | medications___4 == 0)) # 47
# 115929 * 47 = 5,448,663 total data points

# Patients with known steroid treatment (i.e. either 0 or 1, but not NA) - using full dataset
steroid = nrow(subset(ViralInfection, medications___4 == 1)) # nrow = 21824
noSteroid = subset(ViralInfection, medications___4 == 0) # nrow = 94105
knownSteroid = subset(ViralInfection, medications___4 == 1 | medications___4 == 0)







