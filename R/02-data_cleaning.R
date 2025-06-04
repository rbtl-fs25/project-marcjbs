library(tidyverse)

survey_data <- read_csv("/cloud/project/data/raw/survey_data.csv") |> 
  rename("gender" = "What is your gender?",
         "age" = "What is your age?", 
         "res_parents" = "Do you still live with your parents?", 
         "res_situation" = "What is your current living situation?", 
         "education" = "What is your highest form of education?",
         "education_degree" = "Which degree of tertiary education did you achieve?",
         "household" = "How many people live in your household? (including yourself)",
         "employment_type" = "What is your employment type?", 
         "biowaste_separation" = "Do you seperate your biowaste from other solid wastes?",
         "biowaste_compost" = "Do you use a compost to recycle your biowaste?",
         "biowaste_begin_monetary" = "Would you start seperating your biowaste if a system of monetary gain was introduced into the biowaste process?",
         "biowaste_begin_facilities" = "Would you start seperating your biowaste if the already existing facilities are improved (e.g. more frequent pick ups)?",
         "solidwaste_recycling" = "What other waste products do you recycle?",
         "biowaste_system_convenience" = "How convinient do you find the current biowaste disposal system implemented in your neighbourhood?",
         "biowaste_collection_frequency" = "How frequently is the biowaste collected in your neighbourhood?",
         "biowaste_household_production" = "How much biowaste does your household produce on weekly basis in liters?",
         "solidwaste_household_production" = "How much solid waste does your household produce on a weekly basis in liters?",
         "solidwaste_separation" = "Do you seperate any other waste from solid wastes?"
         )

solidwaste_recycling_vect <- strsplit(survey_data$solidwaste_recycling, ",")



write_csv(survey_data, "data/processed/survey_data_cleaned.csv")

#dictionary <- read_sheet("")
#write_csv(dictionary, "data/processed/dictionary.csv")