# Gantt chart maker

Easily create visually appealing Gantt charts using [`ganttrify`](https://github.com/giocomai/ganttrify) in R.

The repository contains the following files:

```
gantt
├── gantt.csv
├── gantt.png
├── gantt.R
├── Makefile
└── spots.csv
```

- `gantt.csv`: This file contains the tasks for each work package. It includes details about the work package (`wp`), task (`activity`), start date (`start_date`), and end date (`end_date`), all measured in project months.
- `spots.csv`: This file tracks milestones for each task. It provides information on the task (`activity`), milestone type (`spot_type`), and due date (`spot_date`), also in project months.
- `gantt.R`: This is the main R script that generates the Gantt chart using `ganttrify`. While it also utilizes the `colorspace` and `tidyverse` packages, these are not essential for the main functionality.
- `Makefile`: Use this file to quickly create or update the Gantt chart directly from the terminal.

For an interactive experience, check out the Shiny app available at <https://ganttrify.europeandatajournalism.eu/>. This app allows you to create and customize Gantt charts in a web GUI.
