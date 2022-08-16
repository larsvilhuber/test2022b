# This script that will build the HTML of the Rmd

install.packages(c("rmarkdown","knitr","ggplot2"), dependencies = TRUE)
rmarkdown::render("analysis.Rmd")