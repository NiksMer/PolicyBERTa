# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

# CSV aus Github laden
df_roh <- read_csv("https://raw.githubusercontent.com/NiksMer/get_manifesto_data/main/complete_data.csv")

# Filtern auf Trainingsdaten. Canada wird herausgefiltert.
df_roh <- df_roh %>%
    select(text,policy)


## 80% Trainingsgröße
smp_size <- floor(0.8 * nrow(df_roh))

## Seed definieren für Reproduzierbarkeit
set.seed(123)
train_ind <- sample(seq_len(nrow(df_roh)), size = smp_size)

# Daten schneiden
df_train <- df_roh[train_ind, ]
df_test <- df_roh[-train_ind, ]

# Daten speichern
write_csv(df_train,"trainingsdaten_policy8d_23022022.csv")
write_csv(df_test, "testdaten_policy8d_23022022.csv")

# NZB löschen.

df_train <- df_train %>%
    dplyr::filter(policy!=7)

df_test <- df_test %>%
    dplyr::filter(policy!=7)

# Daten speichern
write_csv(df_train,"trainingsdaten_policy7d_23022022.csv")
write_csv(df_test, "testdaten_policy7d_23022022.csv")
