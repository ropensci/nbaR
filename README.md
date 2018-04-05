[![Build Status](https://travis-ci.org/naturalis/nbaR.svg?branch=master)](https://travis-ci.org/naturalis/nbaR)

# R client for the Netherlands Biodiversity API

Access to the digitised Natural History collection at the Naturalis Biodiversity Center

## Overview
Note: parts of this API client have been generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project.
- API version: v2
- Package version: 0.0.0

## Installation
You'll need the `devtools` package in order to build the API.
Make sure you have a proper CRAN repository from which you can download packages.

### Prerequisites
Install the `devtools` package with the following command.
```R
if(!require(devtools)) { install.packages("devtools") }
```

### Installation of the API package
Make sure you set the working directory to where the client code is located.
Then execute
```R
library(devtools)
install_github("naturalis/nbaR", build_vignettes=T)
```

### Documentation
User documentation is provided in the package vignette and can be displayed as follows
```
vignette('nbaR')
```

## Author
Hannes Hettling
nba@naturalis.nl

