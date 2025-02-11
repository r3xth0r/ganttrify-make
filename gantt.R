cat(paste(format(Sys.time()), "-- Loading packages\n"))

suppressPackageStartupMessages({
  library("readr")
  library("ggplot2")
  library("colorspace")
  library("ganttrify")
})

invisible(Sys.setlocale("LC_TIME", "C"))

cat(paste(format(Sys.time()), "-- Reading data\n"))

proj_dat <- read_csv("gantt.csv", show_col_types = FALSE)
spot_dat <- read_csv("spots.csv", show_col_types = FALSE)

n_col <- length(unique(proj_dat$wp))

pal <- qualitative_hcl(palette = "Dark 2", n = n_col)

p <- ganttrify(
  project = proj_dat,
  spots = spot_dat,
  project_start_date = "2026-01",
  colour_palette = pal,
  font_family = "Nimbus Sans Narrow",
  size_text_relative = 1.2,
  mark_quarters = TRUE,
  month_breaks = 3,
  mark_years = TRUE,
  alpha_wp = 0.9,
  alpha_activity = 0.5
)

ggsave(filename = "gantt.png", plot = p, width = 300, height = 200, units = "mm")

cat(paste(format(Sys.time()), "-- Gantt chart has been updated\n"))
