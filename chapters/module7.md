---
title: 'Module 7: Packaging your software for sharing in R'
description:
  "This module introduces key concepts for packaging your research software using R."
prev: /module6
next: null
type: chapter
id: 7
---

<exercise id="1" title="To package or not to package">

# 1. What are packages?

An R package is a structured collection of R functions, documentation, tests, and data organized for reuse. At its core, a package is a directory with a `DESCRIPTION` file and `R/` folder containing function definitions. It can also include vignettes, tests, and documentation.

For a gentle introduction, see [R Packages book by Hadley Wickham](https://r-pkgs.org/).

# 2. Why package?

Packaging helps you:
- Reuse code across projects
- Share work with colleagues and the broader R community
- Track development using tools like git
- Improve reproducibility and reduce errors
- Create documentation automatically

# 3. When not to package

You may not need to package your code if:
* You're writing a short, one-off script
* It's a personal analysis for a specific paper
* You're still rapidly prototyping
* You’re distributing code in another format (e.g., R Markdown or Quarto reports)
* The code is too specialized to warrant reuse

As a rule of thumb: workflows for a single paper do not need to be packaged, but helper functions supporting the workflow might.

[More slides on R packaging](https://figshare.com/articles/online_resource/RLeapFROGS_packaging_slides/29121650)

</exercise>

<exercise id="2" title="Sharing your package">

# 1. Software repositories

Your code should live in a version-controlled repository like GitHub or GitLab. These platforms support collaboration, bug tracking, and continuous integration. You will need a to install git on your machine and have an account with GitHub to complete the hand-on portion of this course. You can learn more in [Module 5](https://linked.earth/RLeapFROGS/module5).

# 2. Software registries

Registries make your code discoverable. In R, the main registry is:
* [CRAN](https://cran.r-project.org) — the central repository for R packages.
Other platforms include:
* [r-universe](https://r-universe.dev) — allows automated documentation and builds for packages hosted on GitHub.
* [Bioconductor](https://www.bioconductor.org) — for bioinformatics-related tools.

</exercise>

<exercise id="3" title="Packaging your software">

# 1. Getting started

## User APIs

When building an R package, the user API consists of the functions and objects you export for users to interact with. A clean and intuitive API helps users accomplish their goals without needing to understand the underlying implementation.

### 1. Identify Core User Tasks

Start by listing the 3–5 key tasks your users will want to accomplish with your package. Design functions around those tasks.

Example: For a climate data package, core tasks might include:

```r
load_data()      # Load climate datasets
analyze_trends() # Run basic trend analysis
plot_results()   # Visualize the output
```

### 2. Name Functions Clearly

Use action verbs for functions: `clean_data()`, `fit_model()`, `summarize_results()`. Stick to consistent and descriptive naming conventions. Avoid short or cryptic names unless they're well known (e.g., `lm()`).

### 3. Group Related Functions

If your package includes many functions, use naming prefixes to indicate related functions.

Example:
```r
climate_load()
climate_analyze()
climate_plot()
```

Or organize functionality into submodules (files in the `R/` folder), like `load.R`, `analysis.R`, and `plot.R`.

### 4. Use S3 or S4 Classes for Complex Objects

If your package returns structured data (e.g., models or results), consider defining custom S3 or S4 classes. This enables method dispatch and makes your API feel consistent.

Example: `summary.myModel()` and `plot.myModel()` provide familiar behaviors for new object types.

### 5. Avoid Over-Engineering

Only introduce complexity (like reference classes or R6) when necessary. Simple functions that return lists or data frames are often enough.

### 6. Document Clearly

Use roxygen2 to provide thorough documentation for each function:

```r
#' Load a climate dataset
#'
#' This function loads a dataset from the specified path.
#' @param path Character string. Path to the data file.
#' @return A tibble with the loaded dataset.
#' @export
load_data <- function(path) {
  ...
}
```

### 7. Prototype the API First

Sketch how the API will be used in a script or notebook. This helps surface clunky naming or unclear argument patterns early on.

```r
library(myclimate)
data <- load_data("climate.csv")
results <- analyze_trends(data)
plot_results(results)
```

Ask a peer: "Would you enjoy using this interface?"

### 8. Keep Internals Private

Only export functions that users should access. Use `@export` selectively. Internal helpers should remain unexported and clearly documented for maintainers only.

## Package structure

Use `usethis::create_package()` to set up a clean structure. A typical R package might look like this:

```
myPackage/
├── DESCRIPTION
├── NAMESPACE
├── R/
│   ├── utils.R
│   └── plotting.R
├── man/               # Help files generated by roxygen2
├── tests/
├── vignettes/
└── README.md
```

## Building your first package

Tools to use:
- [`devtools`](https://devtools.r-lib.org) — to streamline package development
- [`roxygen2`](https://roxygen2.r-lib.org) — to write documentation inline with your functions
- [`usethis`](https://usethis.r-lib.org) — to set up packages and files easily

A detailed guide is available at [https://r-pkgs.org](https://r-pkgs.org).

# 2. Documentation

Use roxygen2 comments (`#'`) to document your functions. Run `devtools::document()` to generate help files.

To build websites from your docs:
- [`pkgdown`](https://pkgdown.r-lib.org): Creates a static website from your documentation and vignettes

# 3. Tutorials

Use R Markdown or Quarto to create tutorials demonstrating how to use your package in real workflows.

Example tools:
- [`learnr`](https://rstudio.github.io/learnr) — interactive tutorials in R Markdown
- [`bookdown`](https://bookdown.org) — write books/tutorials
- [`Binder`](https://mybinder.org) — run notebooks interactively online

Examples:
- [dplyr tutorials](https://dplyr.tidyverse.org/articles/index.html)
- [geoChronR tutorials](https://nickmckay.github.io/GeoChronR/articles/Introduction.html)

# 4. Testing and CI

Use `testthat` to write unit tests. Start with `usethis::use_testthat()` and write tests in `tests/testthat/`.

To automate tests on GitHub:
- Add a GitHub Actions workflow using `usethis::use_github_action("check-standard")`

# 5. Code review

Code reviews improve quality and catch issues early. Share your package via GitHub and invite collaborators to open issues and pull requests.

Consider submitting to [rOpenSci](https://ropensci.org/software-review/) for peer review of your scientific R package.

</exercise>

<exercise id="4" title="Publishing your package">

# 1. Publishing on CRAN

See [r-pkgs.org/publishing.html](https://r-pkgs.org/publishing.html) for how to submit to CRAN. Check your package with:

```r
devtools::check()
```

The issues reported by `check()` are categorized into Errors, Warnings, and Notes. You will need to eliminate all Errors and Warnings before submitting your package to CRAN.

# 2. Automating releases

Use GitHub Actions to automate versioning, documentation, and test runs. Consider `usethis::use_release_issue()` to guide your release process.

You can also build and host Docker containers using GitHub Actions if needed.

</exercise>

<exercise id="5" title="Additional Resources">

- [rOpenSci packaging guide](https://devguide.ropensci.org/)
- [The R Packages Book](https://r-pkgs.org/)
- [CRAN Repository Policy](https://cran.r-project.org/web/packages/policies.html)
- [pkgdown documentation](https://pkgdown.r-lib.org/)
- [testthat documentation](https://testthat.r-lib.org/)

</exercise>

<exercise id="7" title="Test your understanding">

Question: What is an R package?

<choice id="07-01">
<opt text="A single R script with functions.">
That describes a script, not a package.
</opt>
<opt text="A folder with a DESCRIPTION file and R/ directory.", correct=True>
This is the minimal structure of an R package.
</opt>
<opt text="A zipped archive of code.">
Not the common form for development or sharing.
</opt>
<opt text="Just a GitHub repository.">
The repository helps host it, but it's not a package by itself.
</opt>
</choice>

Question: Why package your code?

<choice id="07-02">
<opt text="To make it easier to reuse, test, and share.", correct=True>
Packaging improves reusability and maintainability.
</opt>
<opt text="To run code faster.">
Packaging doesn’t directly improve speed.
</opt>
<opt text="To hide your code.">
R packages are public by design.
</opt>
<opt text="To avoid using git.">
In fact, git is highly recommended for package development.
</opt>
</choice>

Question: What tool helps automate package setup?

<choice id="07-03">
<opt text="usethis", correct=True>
This package automates many setup tasks.
</opt>
<opt text="base R only.">
Base R doesn’t provide these development helpers.
</opt>
<opt text="readr">
`readr` helps read data, not create packages.
</opt>
<opt text="tidyverse">
`tidyverse` is a meta-package, not for development setup.
</opt>
</choice>

Question: What file is required to define an R package?

<choice id="07-04">
<opt text="README.md">
Helpful, but not required.
</opt>
<opt text="DESCRIPTION", correct=True>
This file is required to define the package and its metadata.
</opt>
<opt text="index.html">
Not used for package definition.
</opt>
<opt text="install.R">
Not a standard R package file.
</opt>
</choice>

Question: What tool should you use to document your functions inline in R?

<choice id="07-05">
<opt text="roxygen2", correct=True>
This is the standard tool for inline documentation.
</opt>
<opt text="testthat">
Used for testing, not documentation.
</opt>
<opt text="pkgdown">
Used for building websites from documentation.
</opt>
<opt text="readr">
Used for data input, not documentation.
</opt>
</choice>

Question: What is the purpose of `NAMESPACE` in an R package?

<choice id="07-06">
<opt text="To list the authors.">
That belongs in the DESCRIPTION file.
</opt>
<opt text="To declare package exports and imports.", correct=True>
It controls what functions are available to users and what is imported.
</opt>
<opt text="To run unit tests.">
Testing is handled by testthat.
</opt>
<opt text="To build documentation.">
Documentation is generated separately via roxygen2.
</opt>
</choice>

Question: How do you add a test to an R package?

<choice id="07-07">
<opt text="Put code in a notebook.">
Tests belong in the tests/testthat directory.
</opt>
<opt text="Use usethis::use_testthat() and testthat::test_that()", correct=True>
This sets up the structure and defines the test.
</opt>
<opt text="Write a Quarto document.">
Quarto is for documentation and tutorials, not testing.
</opt>
<opt text="Include it in the DESCRIPTION file.">
Not the right location for test code.
</opt>
</choice>

Question: What is `pkgdown` used for?

<choice id="07-08">
<opt text="Documenting test cases.">
Use testthat for testing, not pkgdown.
</opt>
<opt text="Creating vignettes.">
Vignettes are created with R Markdown or devtools.
</opt>
<opt text="Managing dependencies.">
Use DESCRIPTION and usethis for that.
</opt>
<opt text="Building static documentation websites for packages.", correct=True>
It creates nice websites from your documentation.
</opt>
</choice>

Question: What is a vignette in an R package?

<choice id="07-09">
<opt text="A short summary of package contents.">
That's more like a README.
</opt>
<opt text="An R Markdown document showing example usage and workflows.", correct=True>
Vignettes are long-form user guides included with the package.
</opt>
<opt text="A metadata file.">
Metadata is in DESCRIPTION.
</opt>
<opt text="A static website.">
That's built with pkgdown, not a vignette itself.
</opt>
</choice>

Question: Why use GitHub Actions in your R package development?

<choice id="07-10">
<opt text="To edit documentation.">
Docs are edited locally; Actions automate builds.
</opt>
<opt text="To replace CRAN.">
CRAN is still the main registry; Actions work alongside it.
</opt>
<opt text="To automate tests, builds, and deployment.", correct=True>
GitHub Actions automate key parts of package development.
</opt>
<opt text="To generate plots.">
Not a direct purpose of CI tools.
</opt>
</choice>

</exercise>

<exercise id="8" title="Hands-on exercise">

# Hands-on exercise: Build Your First R Package

## Introduction

In this exercise, you'll create a simple R package from scratch. We'll walk through each step of the basic package development workflow, from creating the structure to documenting your code and sharing it on GitHub.

## Prerequisites

Make sure you have the following packages installed:

```r
install.packages(c("usethis", "devtools", "roxygen2", "testthat", "pkgdown"))
```

Also, ensure you have Git installed on your system and a GitHub account set up.

## Step 1: Create a new package

1. Set your working directory to where you want to create your package
2. Create a new package skeleton:

```r
usethis::create_package("colorStats")
```

3. This will create a directory with the basic structure of an R package and open it in a new RStudio session

## Step 2: Add a function with dependencies

1. Create a new R file in the `R/` folder named `color_summary.R`
2. Add the following function that provides summary statistics with colored output (using the `crayon` package):

```r
#' Colored Summary Statistics
#' 
#' @description
#' Provides basic summary statistics for a numeric vector with colored output
#' for better visualization in the console.
#' 
#' @param x A numeric vector.
#' @param digits Number of decimal places to round to.
#' 
#' @return A named list with summary statistics.
#' 
#' @examples
#' color_summary(rnorm(100))
#' color_summary(runif(50), digits=4)
#' 
#' @importFrom stats median sd quantile
#' @importFrom crayon green blue yellow red
#' @export
color_summary <- function(x, digits = 2) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector")
  }
  
  # Calculate statistics
  stats <- list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE),
    min = min(x, na.rm = TRUE),
    max = max(x, na.rm = TRUE),
    q25 = quantile(x, 0.25, na.rm = TRUE),
    q75 = quantile(x, 0.75, na.rm = TRUE)
  )
  
  # Round values
  stats <- lapply(stats, round, digits = digits)
  
  # Print with colors
  cat(green("Summary Statistics:"), "\n")
  cat(blue("Mean:   "), stats$mean, "\n")
  cat(blue("Median: "), stats$median, "\n")
  cat(yellow("SD:     "), stats$sd, "\n")
  cat(red("Min:    "), stats$min, "\n")
  cat(red("Max:    "), stats$max, "\n")
  cat(yellow("Q25:    "), stats$q25, "\n")
  cat(yellow("Q75:    "), stats$q75, "\n")
  
  invisible(stats)
}
```

## Step 3: Add package dependencies

1. Use `usethis` to add the required dependency:

```r
usethis::use_package("crayon")
```

2. Set up Roxygen for documentation:

```r
usethis::use_roxygen_md()
```

## Step 4: Document your package

1. Run the document command to create documentation from roxygen comments:

```r
devtools::document()
```

2. Check that the following files were created:
   - `NAMESPACE` (should now include exports and imports)
   - `man/color_summary.Rd` (documentation for your function)

## Step 5: Add a simple test

1. Set up the testthat framework:

```r
usethis::use_testthat()
```

2. Create a test file for your function:

```r
usethis::use_test("color_summary")
```

3. In the new test file `tests/testthat/test-color_summary.R`, add these tests:

```r
# Test basic functionality with numeric input
test_that("color_summary works with numeric input", {
  # Set a seed for reproducibility
  set.seed(123)
  
  # Generate random normal data
  x <- rnorm(100)
  
  # Call our function with 3 decimal places
  result <- color_summary(x, digits = 3)
  
  # Check that the returned object is a list
  expect_type(result, "list")
  
  # Verify that we get all 7 expected statistics
  expect_equal(length(result), 7)
  
  # Confirm that the calculated mean matches what we'd get directly
  # (rounded to the same number of digits)
  expect_equal(round(mean(x), 3), result$mean)
  
  # Same check for the median statistic
  expect_equal(round(median(x), 3), result$median)
})

# Test error handling for invalid inputs
test_that("color_summary handles errors", {
  # Should error when given a character vector
  expect_error(color_summary("not numeric"))
  
  # Should error when given a list
  expect_error(color_summary(list(1, 2, 3)))
})
```

4. Run the tests:

```r
devtools::test()
```

## Step 6: Create a package README

1. Set up a basic README.md file:

```r
usethis::use_readme_md()
```

2. Edit the README.md file to include:
   - A brief description of your package
   - Installation instructions
   - A basic example

Example content:

```
# colorStats

A simple R package that provides colored summary statistics in the console.

## Installation

You can install the development version from GitHub with:

    # install.packages("devtools")
    devtools::install_github("your-username/colorStats")

## Example

    library(colorStats)
    color_summary(rnorm(100))
```

## Step 7: Set up a GitHub repository

1. Initialize git and make your first commit:

```r
usethis::use_git()
```

2. Create a GitHub repository and push your package:

```r
usethis::use_github()
```

## Step 8: Build a pkgdown site

1. Configure pkgdown for your package:

```r
usethis::use_pkgdown()
```

2. Build the site:

```r
pkgdown::build_site()
```

3. Push to GitHub:

- Ensure that the newly created 'docs' folder is not listed in your '.gitignore' file
- In RStudio, navigate to the Git pane (in the top right corner)
- Ensure all items are staged, add a commit message, and click 'Commit'
- Click 'Push'


4. Enable GitHub Pages in your repository settings to make your pkgdown site visible online.

- Go to your repository on GitHub.com
- Click on "Settings" in the top navigation bar
- Scroll down to the "GitHub Pages" section (or look for "Pages" in the left sidebar)
- Under "Source", select "main" branch (or "master" if that's what you're using)
- For the folder, select "docs" (this is where pkgdown builds the site by default)
- Click "Save"
- Follow the progress of your website build and deploy in the 'Actions' tab of your repository

## Step 9: Install and test your package

1. Open a new RStudio session

2. Install your package from GitHub:

```r
devtools::install_github("your-username/colorStats")
```

3. Test your new function:

```r
library(colorStats)
color_summary(mtcars$mpg)
```

## Troubleshooting

AI chatbots (like Claude and ChatGPT) are helpful for sorting through issues in R package development. Give them a try.

Here is the completed [example](https://github.com/DaveEdge1/colorStats)

## Bonus (if time permits)

Try adding:
- A second function that builds on the first (remember to document!)
- A vignette that demonstrates your package (usethis)
- Continuous integration using GitHub Actions (usethis)

## Conclusion

Congratulations! You've created a basic R package with:
- A documented function with dependencies
- Unit tests
- A GitHub repository
- A pkgdown documentation site

These are the foundations of good package development practices. As you build more complex packages, you'll use these same steps, just with more functions and features.

</exercise>
