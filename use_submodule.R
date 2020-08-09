# This file will be used to demonstrate git submodules.
# The intention is to show how the code within different branches can be
# explored within the context of the superdirectory. This is with a view
# to using submodules to explore developments to libraries of functions.

# Setup -------------------------------------------------------------------

rm(list = ls())

# Libraries ---------------------------------------------------------------

library(here)

# Set Submodule Branch ----------------------------------------------------

# Here the git-submodule-test submodule is set to the branch we wish to use.

# This is the branch we wish to use. 
branch_name <- "master"

# Set working directory to submodule
setwd(here("git-submodule-test"))

# Checkout the branch we want. 
system(paste0("git checkout ", model_version))

# Load Submodule Functions ------------------------------------------------

# These are functions in the submodule.
source("R/use_two_inputs.R")

# Set Parameters ----------------------------------------------------------

a <- 1
b <- 2

# Produce Outputs ---------------------------------------------------------

outputs <- use_two_inputs(a, b)
