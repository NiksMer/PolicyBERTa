# Daten für "PolicyBERTa"

In diesem Repository wurden die allgemeinen Manifesto-Daten auf einen Trainingsdatensatz zusammengeschnitten.

PolicyBERTa-7d enthält dabei nur die Ausprägungen 0-6, während 7 herausgefiltert wird. Der Rest bleibt also unverändert.

## Trainingsdaten

Die Trainingsdaten sind wie folgt verteilt:

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 6.969 |
| 1          | Freiheit und Demokratie       | 5.272 |
| 2          | Politisches System       | 10.080 |
| 3          | Wirtschaft       | 26.808 |
| 4          | Wohlfahrt und Qualität des Lebens       | 34.110 |
| 5          | Gesellschaftsstruktur       | 12.398 |
| 6          | Soziale Gruppen       | 10.264 |
| 7          | Nicht zugeordnet      | 738 |

Deutlich wird, dass es sich nicht um einen balancierten Datensatz handelt.
## Validierungsdaten

Der Validierungsdatensatz wurde per Zufallsauswahl aus dem Trainingsdatensatz gebildet.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 1.708 |
| 1          | Freiheit und Demokratie       | 1.283 |
| 2          | Politisches System       | 2.551 |
| 3          | Wirtschaft       | 6.724 |
| 4          | Wohlfahrt und Qualität des Lebens       | 8.517 |
| 5          | Gesellschaftsstruktur       | 3.135 |
| 6          | Soziale Gruppen       | 2.571 |
| 7          | Nicht zugeordnet      | 171 |

## Testdaten

Alle kanadischen Daten dienen als Testdatensatz.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 1.132 |
| 1          | Freiheit und Demokratie       | 664 |
| 2          | Politisches System       | 1.682 |
| 3          | Wirtschaft       | 3.014 |
| 4          | Wohlfahrt und Qualität des Lebens       | 3.781 |
| 5          | Gesellschaftsstruktur       | 1.385 |
| 6          | Soziale Gruppen       | 686 |
| 7          | Nicht zugeordnet      | 13 |