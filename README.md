# Daten für "PolicyBERTa"

In diesem Repository wurden die allgemeinen Manifesto-Daten auf einen Trainingsdatensatz zusammengeschnitten.

PolicyBERTa-7d enthält dabei nur die Ausprägungen 0-6, während 7 herausgefiltert wird. Der Rest bleibt also unverändert.

## Trainingsdaten

Die Trainingsdaten sind wie folgt verteilt:

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 7.762 |
| 1          | Freiheit und Demokratie       | 5.799 |
| 2          | Politisches System       | 11.434 |
| 3          | Wirtschaft       | 29.228 |
| 4          | Wohlfahrt und Qualität des Lebens       | 37.154 |
| 5          | Gesellschaftsstruktur       | 13.613 |
| 6          | Soziale Gruppen       | 10.787 |
| 7          | Nicht zugeordnet      | 747 |

Deutlich wird, dass es sich nicht um einen balancierten Datensatz handelt.
## Validierungsdaten

Der Validierungsdatensatz wurde per Zufallsauswahl aus dem Trainingsdatensatz gebildet.

| policy | Beschreibung | Anzahl |
|------------|--------------|--------|
| 0          | Internationale Beziehungen        | 2.047 |
| 1          | Freiheit und Demokratie       | 1.420 |
| 2          | Politisches System       | 2.879 |
| 3          | Wirtschaft       | 7.318 |
| 4          | Wohlfahrt und Qualität des Lebens       | 9.254 |
| 5          | Gesellschaftsstruktur       | 3.305 |
| 6          | Soziale Gruppen       | 2.734 |
| 7          | Nicht zugeordnet      | 175 |

