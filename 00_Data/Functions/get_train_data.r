# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

# CSV aus Github laden
df_roh <- read_csv("https://raw.githubusercontent.com/NiksMer/get_manifesto_data/main/complete_data.csv")

# Filtern auf Trainingsdaten. Canada wird herausgefiltert.
df_train_roh <- df_roh %>%
    select(text,policy,countryname) %>%
    dplyr:: filter(countryname!="Canada") %>%
    select(-countryname) %>%
    rename(label = policy)

df_test <- df_roh %>%
    select(text,policy,countryname) %>%
    dplyr:: filter(countryname=="Canada") %>%
    select(-countryname) %>%
    rename(label = policy)


## 80% Trainingsgröße
smp_size <- floor(0.8 * nrow(df_train_roh))

## Seed definieren für Reproduzierbarkeit
set.seed(123)
train_ind <- sample(seq_len(nrow(df_train_roh)), size = smp_size)

# Daten schneiden
df_train <- df_train_roh[train_ind, ]
df_val <- df_train_roh[-train_ind, ]

# Daten speichern
write_csv(df_train,"00_Data/8d/trainingsdaten_policy8d_24022022.csv")
write_csv(df_val, "00_Data/8d/validierungsdaten_policy8d_24022022.csv")
write_csv(df_test, "00_Data/8d/testdaten_policy8d_24022022.csv")

# NZB löschen.

df_train <- df_train %>%
    dplyr::filter(label!=7) %>%
    sample_n(2000)

df_val <- df_val %>%
    dplyr::filter(label!=7) %>%
    sample_n(500)

df_test <- df_test %>%
    dplyr::filter(label!=7)

# Daten speichern
write_csv(df_train,"00_Data/7d/trainingsdaten_policy7d_24022022.csv")
write_csv(df_val,"00_Data/7d/validierungsdaten_policy7d_24022022.csv")
write_csv(df_test, "00_Data/7d/testdaten_policy7d_24022022.csv")
