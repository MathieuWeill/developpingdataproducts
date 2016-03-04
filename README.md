# developpingdataproducts
Repo for my shiny app

This is the source code for a movie explorer app which runs on R and Shiny. The data is a subset of data from allocine. The data is saved in a SQLite database.

To run it locally, you'll need to install the latest versions of ggvis, Shiny, and dplyr, as well as RSQLite.

install.packages(c('shiny', 'ggvis', 'dplyr', 'RSQLite'))

You may need to restart R to make sure the newly-installed packages work properly.

After all these packages are installed, you can run this app by entering the directory, and then running the following in R:

shiny::runApp()

