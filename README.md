# Cytoverse Test

## Set-up options

There are two options to set up for this test. If you are familiar with Docker, you can use our Docker image of the pre-installed `cytoverse` packages and RStudio Server. Otherwise, you can install the `cytoverse` packages in your own machine that has the lastest R installed and complete the test.

### Docker

Get a copy of public docker image of this test and run RStudio Server:

```sh
docker pull juyeongkim/cytoverse-test:latest
docker run -e PASSWORD=1234 -p 8787:8787 juyeongkim/cytoverse-test:latest
```

In your browser, nagivage to http://localhost:8787 and log in with `rstudio` as user and `1234` as password. Open the Rmarkdown (`cytoverse-test.Rmd`) in home directory.

### Local installation

If you prefer using your local installation of R, you can install the `cytoverse` packages with `BiocManager`:

```r
install.packages("BiocManager")
BiocManager::install(c("flowCore", "flowWorkspace", "flowWorkspaceData", "openCyto", "ggcyto"))
```


## The test

### Rmarkdown report

The Rmarkdown report is incomplete. It is filled with `<YOUR CODE HERE>` or `<YOUR FUNCTION HERE>` in code chunks. If you try to render this report, it will error out. Your task is to replace the `<YOUR ... HERE>` with the correct code/function to match with the objective of the code chunks and successfully render the report. Please send us the rendered report (`cytoverse-test.hmtl`). The goal of this task is not to make you an expert in using cytometry tools we built, but to assess how well you can jump into using different bioinfomatics tools and follow the documentation. Please read these documentations if you are not familiar with cytoverse tools:

- [flowCore](https://www.bioconductor.org/packages/release/bioc/vignettes/flowCore/inst/doc/HowTo-flowCore.pdf)
- [ggcyto](https://www.bioconductor.org/packages/release/bioc/vignettes/ggcyto/inst/doc/autoplot.html)
- [flowWorkspace](https://www.bioconductor.org/packages/release/bioc/vignettes/flowWorkspace/inst/doc/flowWorkspace-Introduction.html)
- [openCyto](https://www.bioconductor.org/packages/release/bioc/manuals/openCyto/man/openCyto.pdf)

### Questions

Once you complete rendering the report, please answer these questions. Answering them should be easy and straight forward if you were able to complete the previous task.

1. What are the marker names used in these FCS files?
1. What kind of cytometer was used for this experiment?
1. How many different cell populations (nodes) are defined in the gating template?
1. How many CD4+ T cells and CD8+ T cells are in each sample?
1. Looking at the density plots of CD8 marker expression after transformation in the report, where would you put a partition line to divide the low and high expressed cells? Also, how would you do it programatically?
