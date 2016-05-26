
############################################
# Analytical Code for "Comprehensive cross-population analysis of high-grade serous ovarian cancer supports no more than three subtypes"

#### Way, G., Rudd, J., Wang, C., Hamidi, H., Fridley, B., Konecny, G., Goode, E., Greene, C., Doherty, J. 

[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.32906.svg)](http://dx.doi.org/10.5281/zenodo.32906)
############################################

#######################
# SUMMARY
#######################
The repository contains instructions to replicate the analysis of identifying high-grade serous ovarian cancer subtypes across Australian, American, and Japanese populations. We leverage data from a variety of studies extracted from the bioconductor package curatedOvarianData (Ganzfried et al. 2013) as well as a dataset we uploaded to GEO (GSE74357). We apply a unified, unsupervised bioinformatics pipeline to compare subtypes across these populations and determine that specific subtypes are reliably identified. The most replicable subtypes were mesenchymal-like and proliferative-like and their sample representation was highly concordant with other independent clustering studies performed on single populations.

#######################
# CONTACT
#######################
Please report all bugs and direct coding questions to:
GregWay@mail.med.upenn.edu

Please direct questions regarding the analysis or other correspondence to:
Jennifer.A.Doherty@dartmouth.edu and/or CSGreene@mail.med.upenn.edu

#######################
# ANALYSIS
#######################
For ease of use and to ensure reproducibility, all analyses should be performed in our Docker image <https://hub.docker.com/r/gregway/hgsc_subtypes/>
To install docker, please follow the friendly instructions provided here: <https://docs.docker.com/linux/>

After installing Docker, install our docker image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$docker pull gregway/hgsc_subtypes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Build docker image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$docker build -t gregway/hgsc_subtypes .
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Run docker image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$docker run -it gregway/hgsc_subtypes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Inside the docker container, perform the following to reproduce all analyses
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#cd hgsc_subtypes
hgsc_subtypes#./ANALYSIS.sh
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Note, runtime is about 24 hours.

To save the contents of the docker image and view tables and figures
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$mkdir hgsc_subtypes_analysis
$docker save gregway/hgsc_subtypes | gzip > hgsc_subtypes_analysis/analysis.tar.gz
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

####  FULL BUILD
Alternatively, we provide a fully built docker image with all analyses completed
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$docker pull gregway/hgsc_subtypes_fullbuild
$docker build -t gregway/hgsc_subtypes_fullbuild .
$docker run -it gregway/hgsc_subtypes_fullbuild
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To retrieve the full build without installing docker:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$wget -nv https://zenodo.org/record/32803/files/hgsc_subtypes_fullbuild
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#######################
# Data
#######################
All data was retrieved from curatedOvarianData except for the Mayo data (GSE74357).

#######################
# DEPENDENCIES
#######################
All dependencies are pre-installed in the Docker image. 

* For specific R package installations, view INSTALL.R. 
* The analysis also requires the Sleipnir Normalizer function

#######################
# ACKNOWLEDGEMENTS
#######################

This work was supported by the Institute for Quantitative Biomedical Sciences; the Norris Cotton Cancer Center Developmental Funds; the National Cancer Institute at the National Institutes of Health (R01 CA168758 to J.A.D., F31 CA186625 to J.R., R01 CA122443 to E.L.G.); the Mayo Clinic Ovarian Cancer SPORE (P50 CA136393 to E.L.G.); the Mayo Clinic Comprehensive Cancer Center-Gene Analysis Shared Resource (P30 CA15083); the Gordon and Betty Moore Foundation’s Data-Driven Discovery Initiative (grant number GBMF 4552 to C.S.G.); and the American Cancer Society (grant number IRG 8200327 to C.S.G.).
