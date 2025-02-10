---
type: slides
---

<div><h1><img src="https://mybinder.org/static/logo.svg?v=fe52c40adc69454ba7536393f76ebd715e5fb75f5feafe16a27c47483eabf3311c14ed9fda905c49915d6dbf369ae68fb855a40dd05489a7b9542a9ee532e92b" alt="binder Logo" width=25% align="left"/> Lesson 5<br>Binder and MyBinder</h1></div>

---

## MyBinder for R

MyBinder can host servers based on R environemnts, offering an R console or an instance of RStudio online. There are multiple ways to create a container image compatible with MyBinder. We will address two paths.

---

## Reproducing your environment on mybinder.org

MyBinder and Binder itself are built for Python but also support R. At this time there are multiple pathways to configure your R code repository to run on MyBinder. We recommend starting with a template from GitHub following one of these paths:

1. rocker (preferred)
2. r-conda

---

### rocker pathway

The rocker pathway offers more available packages (anything on CRAN), more flexibility (your choice of package versions), and ensures reproduciblity for local R use. You will simply provide the the renv.lock file containing the R and package version information.

See a more detailed explanation [here](https://github.com/rocker-org/binder/)

Here is a working [example](https://github.com/DaveEdge1/Devils_Hole2)

Here is a template [example](https://github.com/DaveEdge1/Devils_Hole2)

---

### r-conda pathway

In this alternative setup, Binder uses an `environment.yml` file to build your R environment. The advantage of this pathway is reliability in the Binder context - as the pathway is built on Python and conda.

See an example [here](https://github.com/binder-examples/r-conda)

Add Binder stuff from Deborah's LeapFROGS

---

## Linking the Repository to myBinder

1. Go to [myBinder.org](https://mybinder.org).
2. Enter your GitHub repository URL.
3. Set the branch to main (or the relevant branch name).
4. Click Launch. myBinder will build your environment and provide a link for sharing.

<div><h1><img src="https://github.com/LinkedEarth/LeapFROGS/blob/main/static/module6/myBinder.png?raw=true" alt="myBinder" width=50% align="center"/></h1></div>

---

## Creating a myBinder Badge

To allow others to easily launch your environment, add a myBinder badge to your repository’s README.md.

`[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/username/repository/main)`

Replace `username` and `repository` with your **GitHub username** and **repository name**.

---
