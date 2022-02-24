# %%
# Setup

## Packages
import pandas as pd
import numpy as np
import torch
from transformers import RobertaForSequenceClassification, TrainingArguments, Trainer, RobertaTokenizer, RobertaConfig
from datasets import load_metric, load_dataset
from tqdm import tqdm

## Cuda
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
n_gpu = torch.cuda.device_count()


####### Model Config ############

## Modelname
model_to_use = "roberta-base"
trained_model_name = "PolicyBERTa-7d"

## Anzahl Labels
label_count = 7

## Label Name
label_name = ["policy"]

## Anzahl Epochs
epoch_count = 5

## Batch Size
batch_size = 16

####### Data Config ############

## Train Data
train_data = "PolicyBERTa-7d/trainingsdaten_policy7d_24022022.csv"

## Valid Data
valid_data = "PolicyBERTa-7d/validierungsdaten_policy7d_24022022.csv"

# Delimeter
delimeter_char = ";"

####### Functions ############

def tokenize_function(examples):
    return tokenizer(examples["text"], padding="max_length", truncation=True)


def compute_metrics(eval_pred):
    logits, labels = eval_pred
    predictions = np.argmax(logits, axis=-1)
    return metric.compute(predictions=predictions, references=labels)


# %%
# Daten laden
raw_datasets  = load_dataset('csv',data_files={'train':[train_data],'validation':[valid_data]},delimiter=delimeter_char)

# %%
# config
config = RobertaConfig(model_to_use)
# Tokenizer
tokenizer = RobertaTokenizer.from_pretrained(model_to_use,config=config)

tokenized_datasets = raw_datasets.map(tokenize_function, batched=True)

# %%
training_args = TrainingArguments(
    output_dir=trained_model_name,
    evaluation_strategy="epoch",
    num_train_epochs=epoch_count,
    per_device_train_batch_size=batch_size,
    overwrite_output_dir=True,
    per_device_eval_batch_size=batch_size,
    save_strategy="epoch",
    logging_dir='logs',        
    logging_steps=20,
    label_names=label_name)

# %%
metric = load_metric("accuracy")


# %%
model = RobertaForSequenceClassification.from_pretrained(model_to_use, num_labels=label_count)

# %%
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=tokenized_datasets["train"],
    eval_dataset=tokenized_datasets["validation"],
    compute_metrics=compute_metrics,
)

# %%
trainer.train()
# %% 
# Abspeichern

## Log speichern
with open('log.txt', 'w',encoding='utf-8') as f:
    f.write(trainer.state.log_history)

## Modell speichern
trainer.save_model (trained_model_name)

# %%
