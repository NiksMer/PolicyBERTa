# Daten für "PolicyBERTa"

In diesem Repository wurden die allgemeinen Manifesto-Daten auf einen Trainingsdatensatz zusammengeschnitten.

PolicyBERTa-7d enthält dabei nur die Ausprägungen 0-6, während 7 herausgefiltert wird. Der Rest bleibt also unverändert.

## Trainingsdaten

Die Trainingsdaten sind wie folgt verteilt:

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 7.640 |
| 1          | Freiheit und Demokratie       | 5.880 |
| 2          | Politisches System       | 11.234 |
| 3          | Wirtschaft       | 29.218 |
| 4          | Wohlfahrt und Qualität des Lebens       | 37.200 |
| 5          | Gesellschaftsstruktur       | 13.594 |
| 6          | Soziale Gruppen       | 11.177 |

Deutlich wird, dass es sich nicht um einen balancierten Datensatz handelt.
## Validierungsdaten

Der Validierungsdatensatz wurde per Zufallsauswahl aus dem Trainingsdatensatz gebildet.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 1.345 |
| 1          | Freiheit und Demokratie       | 1.043 |
| 2          | Politisches System       | 2.038 |
| 3          | Wirtschaft       | 5.140 |
| 4          | Wohlfahrt und Qualität des Lebens       | 6.554 |
| 5          | Gesellschaftsstruktur       | 2.384 |
| 6          | Soziale Gruppen       | 1.952 |

## Testdaten

Kanadischen Daten von 2004 bis 2008 dienen als Testdatensatz.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 824 |
| 1          | Freiheit und Demokratie       | 296 |
| 2          | Politisches System       | 1.041 |
| 3          | Wirtschaft       | 2.188 |
| 4          | Wohlfahrt und Qualität des Lebens       | 2.654 |
| 5          | Gesellschaftsstruktur       | 940 |
| 6          | Soziale Gruppen       | 387 |