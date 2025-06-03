library(googlesheets4)
library(tidyverse)

survey_data <- read_sheet("https://docs.google.com/spreadsheets/d/1E0UnNgBgaXkZHaf15_bg7us7q5uXaAcOU969XiNUTtg/edit?resourcekey=&gid=766710190#gid=766710190")

write_csv(survey_data, "/cloud/project/data/raw/survey_data.csv")