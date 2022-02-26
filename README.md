# Daten für "PolicyBERTa"

In diesem Repository wurden die allgemeinen Manifesto-Daten auf einen Trainingsdatensatz zusammengeschnitten.

PolicyBERTa-7d enthält dabei nur die Ausprägungen 0-6, während 7 herausgefiltert wird. Der Rest bleibt also unverändert.

## Trainingsdaten

Die Trainingsdaten sind wie folgt verteilt:

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 7.613 |
| 1          | Freiheit und Demokratie       | 5.854 |
| 2          | Politisches System       | 11.215 |
| 3          | Wirtschaft       | 29.205 |
| 4          | Wohlfahrt und Qualität des Lebens       | 37.312 |
| 5          | Gesellschaftsstruktur       | 13.590 |
| 6          | Soziale Gruppen       | 11.152 |
| 7          | Nicht zugeordnet      | 775 |

Deutlich wird, dass es sich nicht um einen balancierten Datensatz handelt.
## Validierungsdaten

Der Validierungsdatensatz wurde per Zufallsauswahl aus dem Trainingsdatensatz gebildet.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 1.372 |
| 1          | Freiheit und Demokratie       | 1.069 |
| 2          | Politisches System       | 2.057 |
| 3          | Wirtschaft       | 5.153 |
| 4          | Wohlfahrt und Qualität des Lebens       | 6.442 |
| 5          | Gesellschaftsstruktur       | 2.388 |
| 6          | Soziale Gruppen       | 1.982 |
| 7          | Nicht zugeordnet      | 134 |

## Testdaten

Alle kanadischen Daten dienen als Testdatensatz.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 824 |
| 1          | Freiheit und Demokratie       | 296 |
| 2          | Politisches System       | 1.041 |
| 3          | Wirtschaft       | 2.188 |
| 4          | Wohlfahrt und Qualität des Lebens       | 2.654 |
| 5          | Gesellschaftsstruktur       | 940 |
| 6          | Soziale Gruppen       | 387 |
| 7          | Nicht zugeordnet      | 13 |