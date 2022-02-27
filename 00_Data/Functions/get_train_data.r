# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

# CSV aus Github laden
df_roh <- read_csv("https://raw.githubusercontent.com/NiksMer/get_manifesto_data/main/complete_data.csv")

# Filtern auf Trainingsdaten. Canada wird herausgefiltert.
df_train_roh <- df_roh %>%
    select(text,policy,corpus_code) %>%
    dplyr:: filter(!corpus_code %in% c("62110_200810","62320_200406","62320_200601","62320_200810","62420_200406","62420_200601","62420_200810","62623_200406","62623_200601","62623_200810")) %>%
    select(-corpus_code) %>%
    rename(label = policy)

df_test <- df_roh %>%
    select(text,policy,corpus_code) %>%
    dplyr:: filter(corpus_code %in% c("62110_200810","62320_200406","62320_200601","62320_200810","62420_200406","62420_200601","62420_200810","62623_200406","62623_200601","62623_200810")) %>%
    select(-corpus_code) %>%
    rename(label = policy)

## 85% of the sample size
smp_size <- floor(0.85 * nrow(df_train_roh))

## set the seed to make your partition reproducible
set.seed(123)
train_ind <- sample(seq_len(nrow(df_train_roh)), size = smp_size)

df_train <- df_train_roh[train_ind, ]
df_val <- df_train_roh[-train_ind, ]

# Daten speichern
write_csv(df_train,"00_Data/7d/trainingsdaten_policy7d_27022022.csv")
write_csv(df_val,"00_Data/7d/validierungsdaten_policy7d_27022022.csv")
write_csv(df_test,"00_Data/7d/testdaten_policy7d_27022022.csv")
