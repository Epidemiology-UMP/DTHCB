## 1. create github repository
## 2. create RStudio project from new Version Control
## 3. clone github repository into the new RStudio project
## 4. download and unzip the bookdown demo file (https://github.com/rstudio/bookdown-demo/archive/master.zip) into the RStudio project
## 5. modify the _bookdown.yml, _output.yml
## 6. create .nojekyll file
file.create('.nojekyll')
### add to git (not shown up in RStudio): git add .nojekyll
## 7. add output_dir: "docs" to the configuration file _bookdown.yml

bookdown::render_book(input = "index.Rmd", output_format = "bookdown::pdf_book", output_dir = "docs")

## preview chapter

preview_chapter(input = ...)
bookdown:::preview_chapter(input = "02-sodo.Rmd")
