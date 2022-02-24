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
    select(-countryname)

df_test <- df_roh %>%
    select(text,policy,countryname) %>%
    dplyr:: filter(countryname=="Canada") %>%
    select(-countryname)


## 80% Trainingsgröße
smp_size <- floor(0.8 * nrow(df_train_roh))

## Seed definieren für Reproduzierbarkeit
set.seed(123)
train_ind <- sample(seq_len(nrow(df_train_roh)), size = smp_size)

# Daten schneiden
df_train <- df_train_roh[train_ind, ]
df_val <- df_train_roh[-train_ind, ]

# Daten speichern
write_csv(df_train,"PolicyBERTa-8d/trainingsdaten_policy8d_24022022.csv")
write_csv(df_val, "PolicyBERTa-8d/validierungsdaten_policy8d_24022022.csv")
write_csv(df_test, "PolicyBERTa-8d/testdaten_policy8d_24022022.csv")

# NZB löschen.

df_train <- df_train %>%
    dplyr::filter(policy!=7)

df_val <- df_val %>%
    dplyr::filter(policy!=7)

df_test <- df_test %>%
    dplyr::filter(policy!=7)

# Daten speichern
write_csv(df_train,"PolicyBERTa-7d/trainingsdaten_policy7d_24022022.csv")
write_csv(df_val,"PolicyBERTa-7d/validierungsdaten_policy7d_24022022.csv")
write_csv(df_test, "PolicyBERTa-7d/testdaten_policy7d_24022022.csv")
