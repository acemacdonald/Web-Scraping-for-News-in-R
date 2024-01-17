### Packages required
library(gmailr)
library(dplyr)
library(rmarkdown)

Sys.setenv(RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools")
today <- Sys.Date()
today_clean <- format(today, format="%d_%m_%y")

rmarkdown::render(
  "/Users/angusmacdonald/Documents/GitHub/Web Scraping for News in R/Report_Test.Rmd",
  output_format = pdf(),
  #output_file = paste0("Newsletter_",today_clean),
  output_file = "Newsletter",
  output_dir = "/Users/angusmacdonald/Documents/GitHub/Web Scraping for News in R",
  #output_options = NULL,
  #output_yaml = NULL,
  #intermediates_dir = NULL,
  knit_root_dir = "/Users/angusmacdonald/Documents/GitHub/Web Scraping for News in R",
  runtime = c("static"),
  #clean = TRUE,
  #params = NULL,
  #knit_meta = NULL,
  envir = parent.frame(),
  #run_pandoc = TRUE,
  quiet = FALSE,
  #encoding = "UTF-8"
)

quit(save = "no")