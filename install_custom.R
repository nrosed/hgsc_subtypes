# Install rforge and custom github packages
#
# Usage:
#
#    After activating conda environment (`source activate hgsc_subtypes`):
#
#          R --no-save < install_custom.R

library(devtools)

# Install ESTIMATE
rforge <- "http://r-forge.r-project.org"
install.packages("estimate", repos = rforge, dependencies = TRUE)

# Install MCPcounter
install_github("ebecht/MCPcounter", ref = "master", subdir = "Source",
               force = TRUE)

# Install WGCNA version 1.51

# for some reason this version is no longer able
# to be successfully loaded using envoronment.yml
# and silently fails
# to get around this we explicitly download the package
# dependencies, using a best guess
# I guessed that the packages were up-to-date
# with WGCNA 1.51, so this was in 2016
# and I take the packags version most recently updated
# before 2016


# packages must be installed in this order

# acepack requires installation of gfortran, installed in environment.yml
ace_url <- "https://cran.r-project.org/src/contrib/Archive/acepack/acepack_1.3-3.3.tar.gz"
install.packages(ace_url, repos=NULL, type="source")

latt_url <- "https://cran.r-project.org/src/contrib/Archive/latticeExtra/latticeExtra_0.6-28.tar.gz"
install.packages(latt_url, repos=NULL, type="source")

for_url <- "https://cran.r-project.org/src/contrib/Archive/foreign/foreign_0.8-66.tar.gz"
install.packages(for_url, repos=NULL, type="source")

hmsic_url <- "https://cran.r-project.org/src/contrib/Archive/Hmisc/Hmisc_4.0-0.tar.gz"
install.packages(hmsic_url, repos=NULL, type="source")


packageurl <- "https://cran.r-project.org/src/contrib/Archive/WGCNA/WGCNA_1.51.tar.gz"
install.packages(packageurl, repos=NULL, type="source")
