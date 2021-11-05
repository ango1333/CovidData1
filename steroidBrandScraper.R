# Subsetting User Types of Interest

# Table of different group sizes
apply(indVar depVar, length)
confusionMatrix(indVar, depVar)
table(indVar, depVar)

subset(indVar, apply(indVar == 1))
# Patients with a known steroid treatment - using trimmed dataset - 1 = steroid given, 0 = steroid not given (NA's are excluded)
steroidTrim = subset(viralTrim, medications___4 == 1) 
noSteroidTrim = subset(viralTrim, medications___4 == 0)
knownSteroidTrim = subset(viralTrim, medications___4 == 1 | medications___4 == 0)


# Steroid Brand Scraper
steroidTypes = c("cortisone",
                 "prednisone",
                 "prednisolone",
                 "methylprednisolone",
                 "dexamethasone",
                 "betamethasone",
                 "hydrocortisone")

brand = str_split_fixed(viralTrim$steroid_name_dose, " ", 10)
unique(brand[,1])
class(brand)

unique(viralTrim$steroid_name_dose)

nrow(subset(viralTrim, medications___4 == 1)) # 21824 total rows

nrow(is.na(viralTrim$steroid_name_dose))


length(grep('cortisone|SOLUCORTEF', viralTrim$steroid_name_dose, ignore.case = TRUE)) # includes hydrocortisone in the results
length(grep('^corti.*|SOLUCOrtef', viralTrim$steroid_name_dose, ignore.case = TRUE)) # excludes hydrocortisone
length(grep("^prednisone.*", viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep("prednisol.*", viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep('methylpred.*|methyl pred.*|Me-Prednisolone|solu-medrol|solumedrol|solu medrol|metilprednisone|', viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep("dex.*", viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep('betameth.*|de.adron', viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep("hydroc.*", viralTrim$steroid_name_dose, ignore.case = TRUE))
length(grep("flut.*", viralTrim$steroid_name_dose, ignore.case = TRUE))

viralTrim$steroid_name_dose[grep("^prednisone.*", viralTrim$steroid_name_dose, ignore.case = TRUE)]
length(grep('cortisone|SOLUCORTEF', viralTrim$steroid_name_dose, ignore.case = TRUE))

?str_detect
?grepl
?search
