# Gantt-Charts

Schnelle Implementierung von optisch etwas ansprechenderen Gantt-Charts mithilfe von [`ganttrify`](https://github.com/giocomai/ganttrify) in R.

Folgende Files liegen in diesem Directory:

```
gantt
├── gantt.csv
├── gantt.png
├── gantt.R
├── Makefile
└── spots.csv
```

- `gantt.csv` betrifft Tasks pro Arbeitspaket. Das File enthält Informationen zum Arbeitspaket (`wp`), Task (`activity`) sowie Startdatum (`start_date`) und Enddatum (`end_date`), jeweils in Projektmonaten gemessen.
- `spots.csv` betrifft Meilensteine pro Task. Das File Informationen zum Task (`activity`), zum Meilenstein (`spot_type`) zum Fälligkeitsdatum (`spot_date`), ebenso in Projektmonaten.
- `gantt.R` ist das R Skipt zum Erstellen des Plots mit `ganttrify`. Weitere im Moment verwendete Pakete sind `colorspace` und `tidyverse`, beide sind für die Kernfunktionalität allerdings nicht zwingend notwendig.
-  `Makefile` zum schnellen Erstellen/Updaten des Plots via Terminal. 

Für die Interaktive Erstellung gibt es auch eine Shiny App unter <https://ganttrify.europeandatajournalism.eu/>.
