FROM r-base:4.3.1

RUN apt-get update && apt-get install -y libcurl4-openssl-dev cmake

RUN R -e "install.packages('BiocManager', dependencies=TRUE)"
RUN R -e "BiocManager::install(version = '3.17')"
RUN R -e "BiocManager::install('SeqArray')"
RUN R -e "BiocManager::install('SeqVarTools')"

COPY vcf2gds.r /
