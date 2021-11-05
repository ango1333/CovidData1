library(readxl)
ViralInfectionData = read_excel("Downloads/ViralInfectionAndRes-4382Chung_DATA_2021-08-05_1302.xlsx")
write.csv((ViralInfectionData),"/Volumes/GoogleDrive/My Drive/Griff Personal/MBA/MBA Classwork/Adv Analytics/Project/ViralInfectionAndRes-4382Chung_DATA_2021-08-05_1302.csv")
head(ViralInfectionData)
nrow(ViralInfectionData)

ViralInfection = data.frame(ViralInfectionData)
data.frame(sapply(ViralInfection, class))

write.csv(head(ViralInfectionData, 100), "Downloads/ViralInfectionHead.csv")
ViralHead = read.csv("/Volumes/GoogleDrive/My Drive/Griff Personal/MBA/MBA Classwork/Adv Analytics/Project/ViralInfectionHead.csv")
ViralHead = as.data.frame(ViralHead)

nrow(ViralInfectionData)
ncol(ViralInfectionData)
data.frame(colnames(ViralInfectionData), class(ViralInfectionData))

ViralHead[is.na(ViralHead)] = NULL
is.na(ViralHead)



OxygenationMethods = c("oxygenation_methods_2___0", 
                       "oxygenation_methods_2___1", 
                       "oxygenation_methods_2___2", 
                       "oxygenation_methods_2___3", 
                       "oxygenation_methods_2___4", 
                       "oxygenation_methods_2___7", 
                       "oxygenation_methods_2___5", 
                       "oxygenation_methods_2___6")

is_patient_participating = c("is_patient_participating_i___1",
                             "is_patient_participating_i___2",
                             "is_patient_participating_i___3",
                             "is_patient_participating_i___4", 
                             "is_patient_participating_i___5",  
                             "is_patient_participating_i___6", 
                             "is_patient_participating_i___7",
                             "is_patient_participating_i___10", 
                             "is_patient_participating_i___11")

comorbidities = c("comorbidities___1",              
                  "comorbidities___2",
                  "comorbidities___3", 
                  "comorbidities___4", 
                  "comorbidities___5",
                  "comorbidities___6",
                  "comorbidities___7",              
                  "comorbidities___8",            
                  "comorbidities___9",
                  "comorbidities___10",             
                  "comorbidities___11",
                  "comorbidities___12",
                  "comorbidities___13",             
                  "comorbidities___14",          
                  "comorbidities___15",            
                  "comorbidities___16",             
                  "comorbidities___17",         
                  "comorbidities___18",           
                  "comorbidities___19",             
                  "comorbidities___20",        
                  "comorbidities___21",
                  "comorbidities___22",             
                  "comorbidities___23",       
                  "comorbidities___24",
                  "comorbidities___25",             
                  "comorbidities___26",            
                  "comorbidities___27",            
                  "comorbidities___28",            
                  "comorbidities___29",             
                  "comorbidities___30",             
                  "comorbidities___31",             
                  "comorbidities___32",              
                  "comorbidities___33",              
                  "comorbidities___34",             
                  "comorbidities___35",             
                  "comorbidities___36",              
                  "comorbidities___37",             
                  "comorbidities___51")

types_of_chronic_pulmonary = c("types_of_chronic_pulmonary___1",  
                               "types_of_chronic_pulmonary___2",  
                               "types_of_chronic_pulmonary___3", 
                               "types_of_chronic_pulmonary___4",  
                               "types_of_chronic_pulmonary___5",  
                               "types_of_chronic_pulmonary___6", 
                               "types_of_chronic_pulmonary___7",  
                               "types_of_chronic_pulmonary___8",  
                               "types_of_chronic_pulmonary___9", 
                               "types_of_chronic_pulmonary___10", 
                               "types_of_chronic_pulmonary___11", 
                               "types_of_chronic_pulmonary___21")

pre_hospital_medication = c(
  "pre_hospital_medication___0",
  "pre_hospital_medication___1",
  "pre_hospital_medication___2",
  "pre_hospital_medication___3",
  "pre_hospital_medication___4",    
  "pre_hospital_medication___17",
  "pre_hospital_medication___5",
  "pre_hospital_medication___6",    
  "pre_hospital_medication___7",
  "pre_hospital_medication___8",
  "pre_hospital_medication___9",    
  "pre_hospital_medication___10",
  "pre_hospital_medication___11",
  "pre_hospital_medication___12",   
  "pre_hospital_medication___13",
  "pre_hospital_medication___14",
  "pre_hospital_medication___15",   
  "pre_hospital_medication___16",
  "pre_hospital_medication___51"
)

drug_class_of_antidiabetic = c(
  "drug_class_of_antidiabetic___1", 
  "drug_class_of_antidiabetic___2",
  "drug_class_of_antidiabetic___3",
  "drug_class_of_antidiabetic___4", 
  "drug_class_of_antidiabetic___5",
  "drug_class_of_antidiabetic___6",
  "drug_class_of_antidiabetic___7", 
  "drug_class_of_antidiabetic___8",
  "drug_class_of_antidiabetic___9",
  "drug_class_of_antidiabetic___10",
  "drug_class_of_antidiabetic___11",
  "drug_class_of_antidiabetic___12",
  "drug_class_of_antidiabetic___21"
)

admission_diagnosis = c(
  "admission_diagnosis___1",
  "admission_diagnosis___2",
  "admission_diagnosis___3",        
  "admission_diagnosis___4",
  "admission_diagnosis___5",
  "admission_diagnosis___6",        
  "admission_diagnosis___7",
  "admission_diagnosis___8",
  "admission_diagnosis___9",        
  "admission_diagnosis___10",
  "admission_diagnosis___11",
  "admission_diagnosis___12",       
  "admission_diagnosis___13",
  "admission_diagnosis___14",
  "admission_diagnosis___29",       
  "admission_diagnosis___15",
  "admission_diagnosis___16",
  "admission_diagnosis___17",
  "admission_diagnosis___18",
  "admission_diagnosis___19",
  "admission_diagnosis___20",
  "admission_diagnosis___21",
  "admission_diagnosis___22",
  "admission_diagnosis___23",       
  "admission_diagnosis___24",
  "admission_diagnosis___25",
  "admission_diagnosis___26",       
  "admission_diagnosis___27",
  "admission_diagnosis___28",
  "admission_diagnosis___31" 
)

bpp_pathogens = c(
  "bpp_pathogens___1",              
  "bpp_pathogens___2",
  "bpp_pathogens___3",
  "bpp_pathogens___4",              
  "bpp_pathogens___5",
  "bpp_pathogens___6",
  "bpp_pathogens___7",              
  "bpp_pathogens___8",
  "bpp_pathogens___9",
  "bpp_pathogens___10",             
  "bpp_pathogens___11",
  "bpp_pathogens___12",
  "bpp_pathogens___13",             
  "bpp_pathogens___14",
  "bpp_pathogens___15",
  "bpp_pathogens___16",             
  "bpp_pathogens___17",
  "bpp_pathogens___18",
  "bpp_pathogens___19",             
  "bpp_pathogens___20",
  "bpp_pathogens___21",
  "bpp_pathogens___22",             
  "bpp_pathogens___25"
)

test_other_positive = c(
  "test_other_performed___1",
  "test_other_performed___2",
  "test_other_performed___3",       
  "test_other_performed___4",
  "test_other_performed___5",
  "test_other_performed___6",       
  "test_other_performed___11",
  "test_other_positive___1",
  "test_other_positive___2",        
  "test_other_positive___3",
  "test_other_positive___4",
  "test_other_positive___5",        
  "test_other_positive___6",
  "test_other_positive___11"
)

oxygenation = c(
  "oxygenation___2",                
  "oxygenation___3",
  "oxygenation___1",
  "oxygenation___4",                
  "oxygenation___5",
  "oxygenation___6",
  "oxygenation___11",               
  "oxygenation___9"
)

types_of_vasopressors = c(
  "types_of_vasopressors___11",     
  "types_of_vasopressors___1",
  "types_of_vasopressors___2",
  "types_of_vasopressors___3",      
  "types_of_vasopressors___4",
  "types_of_vasopressors___5",
  "types_of_vasopressors___6",      
  "types_of_vasopressors___7",
  "types_of_vasopressors___8",
  "types_of_vasopressors___9",      
  "types_of_vasopressors___10",
  "types_of_vasopressors___12",
  "types_of_vasopressors___21"
)

medications = c(
  "medications___0",
  "medications___1",
  "medications___2",                
  "medications___3",
  "medications___4",
  "medications___5",
  "medications___6",
  "medications___7",
  "medications___8",                
  "medications___9",
  "medications___10",
  "medications___11",
  "medications___12",
  "medications___13",
  "medications___14",               
  "medications___15",
  "medications___16",
  "medications___23",               
  "medications___17",
  "medications___18",
  "medications___19",               
  "medications___20",
  "medications___22",
  "medications___21"
)

name_of_antiviral = c(
  "name_of_antiviral___1",
  "name_of_antiviral___2",          
  "name_of_antiviral___3",
  "name_of_antiviral___4",
  "name_of_antiviral___5",          
  "name_of_antiviral___6",
  "name_of_antiviral___7",
  "name_of_antiviral___8"
)

mis_medications = c(
  "mis_medications___0",
  "mis_medications___1",            
  "mis_medications___2",
  "mis_medications___3",
  "mis_medications___4",            
  "mis_medications___5",
  "mis_medications___6"
)

oxygenation_methods_2 = c(
  "oxygenation_methods_2___0",
  "oxygenation_methods_2___1",
  "oxygenation_methods_2___2",
  "oxygenation_methods_2___3",      
  "oxygenation_methods_2___4",
  "oxygenation_methods_2___7",
  "oxygenation_methods_2___5",      
  "oxygenation_methods_2___6"
)

icu_level_care = c(
  "icu_level_care___0",
  "icu_level_care___1",
  "icu_level_care___2",             
  "icu_level_care___3",
  "icu_level_care___4",
  "icu_level_care___5",             
  "icu_level_care___6",
  "icu_level_care___7",
  "icu_level_care___8",             
  "icu_level_care___9",
  "icu_level_care___10",
  "icu_level_care___11",            
  "icu_level_care___21"
)

complications = c(
  "complications___0",
  "complications___1",              
  "complications___2",
  "complications___3",
  "complications___4",              
  "complications___5",
  "complications___6",
  "complications___7",              
  "complications___8",
  "complications___9",
  "complications___10",             
  "complications___11",
  "complications___12",
  "complications___13",             
  "complications___14",
  "complications___15",
  "complications___16",             
  "complications___17",
  "complications___18",
  "complications___19",             
  "complications___20",
  "complications___21",
  "complications___22",             
  "complications___23",
  "complications___24",
  "complications___25",
  "complications___26",
  "complications___27",
  "complications___28",             
  "complications___29",
  "complications___30",
  "complications___31",             
  "complications___32",
  "complications___33",
  "complications___34",
  "complications___42",
  "complications___35",
  "complications___36",             
  "complications___37",
  "complications___38",
  "complications___39",             
  "complications___40",
  "complications___41",
  "complications___71"
)

treatment_events = c(
  "treatment_events___1",
  "treatment_events___2",           
  "treatment_events___3",
  "treatment_events___4",
  "treatment_events___5",           
  "treatment_events___6"
)

groups = c(OxygenationMethods,is_patient_participating,comorbidities,types_of_chronic_pulmonary,
           pre_hospital_medication,drug_class_of_antidiabetic,admission_diagnosis,bpp_pathogens,
           test_other_positive,
           oxygenation,
           types_of_vasopressors,
           medications,
           name_of_antiviral,
           mis_medications,
           oxygenation_methods_2,
           icu_level_care,
           complications,
           treatment_events)




