# Setup
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(tidyselect))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(readr))

# CSV aus Github laden
df_roh <- read_csv("https://raw.githubusercontent.com/NiksMer/get_manifesto_data/main/complete_data.csv")

# Filtern auf Trainingsdaten. Canada wird herausgefiltert.
df_train <- df_roh %>%
    select(text,policy,countryname) %>%
    dplyr:: filter(countryname!="Canada") %>%
    select(-countryname) %>%
    rename(label = policy)

df_val <- df_roh %>%
    select(text,policy,countryname) %>%
    dplyr:: filter(countryname=="Canada") %>%
    select(-countryname) %>%
    rename(label = policy)

# Daten speichern
write_csv(df_train,"00_Data/8d/trainingsdaten_policy8d_26022022.csv")
write_csv(df_val, "00_Data/8d/validierungsdaten_policy8d_26022022.csv")

# NZB löschen.

df_train <- df_train %>%
    dplyr::filter(label!=7)

df_val <- df_val %>%
    dplyr::filter(label!=7)

# Daten speichern
write_csv(df_train,"00_Data/7d/trainingsdaten_policy7d_26022022.csv")
write_csv(df_val,"00_Data/7d/validierungsdaten_policy7d_26022022.csv")