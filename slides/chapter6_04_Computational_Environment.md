---
type: slides
---

<div><h1><img src="https://raw.githubusercontent.com/docker-library/docs/c350af05d3fac7b5c3f6327ac82fe4d990d8729c/docker/logo.png" alt="Docker Logo" width=25% align="left"/> Lesson 5<br>Creating Containers</h1></div>

---

## What is a Compuational Environment?


In the context of reproducible code for scientific workflows, a computational environment is a structured setup that ensures code can be executed consistently across different systems, enabling others to reproduce results reliably.

To ensure your R code is reproducible, you must provide:

1. Dependencies and Software Stack (R version, package versions, system libraries eg. GDAL)
2. Environment Management Tools (Docker, Binder, renv)
3. Version Control and Provenance Tracking (GitHub and Zenodo)

---

## Understanding your Dependencies

R offers the in-built function `sessionInfo()` to find relevant details on the current software stack. Here you will find you operating system, R version, and package versions amongst other information.

To ensure your code is reproducible, the R and package version information is critical. Thankfully, there's an R package to do this for you!

<div><h1><img src="https://github.com/LinkedEarth/RLeapFROGS/blob/R.specific/static/module6/sessionInfo().PNG?raw=true" alt="renv Logo" width=25% align="left"/>renv</h1></div>

---

## Managing R Dependencies with renv

<div><h1><img src="https://rstudio.github.io/renv/logo.svg" alt="renv Logo" width=25% align="left"/>renv</h1></div>

`renv` manages your dependencies with 3 key functions:

`init()`: creates a lockfile that records the state of the project library so it can be restored by others
`snapshot()`: updates the lockfile to the current state of dependencies
`restore()`: restore a project's dependencies from a lockfile

An renv lockfile stores all necessary information to reproduce your coding environment. This file can be used by other researchers to reproduce your work or by tools like Binder to recreate your compuational environment. 

Read the full documentation [here](https://rstudio.github.io/renv/articles/renv.html)

renv also makes [creating containers](https://rstudio.github.io/renv/articles/docker.html) very simple

---

## Reproducing your environment on mybinder.org

mybinder and binder itself are built for Python, but can also support R. At this time there are multiple pathways to configure your R code repository to run on mybinder. We will look at two options.

1. r-conda
2. rocker

---

### r-conda pathway

In this setup, binder uses an `environment.yml` file to build your R environment. The advantage of this pathway is speed and reliability - as the pathway is built on Python and conda.

See an example [here](https://github.com/binder-examples/r-conda)

---

### rocker pathway

The rocker pathway offers more available packages (anything on CRAN) and more flexibility (your choice of package versions). You will simply provide the R version in the Dockerfile and the packages in the install.R file.

See a more detailed explanation [here](https://github.com/rocker-org/binder/)