# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

df_train <- read_csv("00_Data/7d/trainingsdaten_policy7d_27022022.csv") %>%
    group_by(label) %>%
    summarise(n=n())

print(df_train)

df_val <- read_csv("00_Data/7d/validierungsdaten_policy7d_27022022.csv") %>%
    group_by(label) %>%
    summarise(n=n())

print(df_val)

df_test <- read_csv("00_Data/7d/testdaten_policy7d_27022022.csv") %>%
    group_by(label) %>%
    summarise(n=n())

print(df_test)