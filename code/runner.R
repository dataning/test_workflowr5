pacman::p_load("workflowr", "usethis", "here")

# Open a R file to capture the set-up of the workflow
usethis::edit_file('code/runner.R')

# Structure the folder with workflow
wflow_start(here(), existing = TRUE)

# Get a GitHub repo for the
wflow_use_github("dataning")

# New working file
wflow_open("analysis/first-analysis.Rmd")
usethis::edit_file('code/first-analysis.R')

# Build project website
wflow_build()

# Get untracked files
wflow_status()

# Publish files
wflow_publish(c("analysis/index.Rmd",
                "analysis/about.Rmd",
                "analysis/license.Rmd"),
              "Write_down_your_comment_here")

# Send them to GitHub
wflow_git_push()
