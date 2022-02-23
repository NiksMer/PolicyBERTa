# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

df_train <- read_csv("trainingsdaten_policy_23022022.csv") %>%
    group_by(policy) %>%
    summarise(n=n())

print(df_train)

df_test <- read_csv("testdaten_policy_23022022.csv") %>%
    group_by(policy) %>%
    summarise(n=n())

print(df_test)