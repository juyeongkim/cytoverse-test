FROM bioconductor/bioconductor_docker:latest
RUN R -q -e 'BiocManager::install(c("flowCore", "flowWorkspace", "flowWorkspaceData", "openCyto", "ggcyto"))'
