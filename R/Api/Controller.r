library(plumber)
# 'plumber.R' is the location of the file shown above
pr("Api/Service.R") %>%
  pr_run(port=8000)