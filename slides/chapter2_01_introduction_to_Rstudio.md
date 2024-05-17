---
type: slides
---

<div><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/RStudio_logo_flat.svg/1920px-RStudio_logo_flat.svg.png" alt="RStudio logo" width="25%" align="left"></div>
<br><br><br><br>

---

# Still haven't gotten RStudio up and running?

[Here's a short tutorial](https://rstudio-education.github.io/hopr/starting.html)

---

## Running Rscripts in RStudio

- Creating a new R script: 
  * From the menu clcik on: 
      File -> New File -> R Script

- Write a simple R code the document that shows up in the editor:
```r
4 + 5
```

- Run your code clicking on the "Source" button (upper right-hand side) to run the entire document.
- To run a single line, type Ctrl+Enter (Command+Return) to run the current line or highlighted code

<div><img src="static/module2/LeapFROGS_02_01_Rstudio_screenshot.png" alt="RStudio screenshot" width="25%" align="left"></div>

---

## Code output

When running R code in the console output ends up in one of to places, depending on the type of output:

* Textual output: printed to the console.

* Graphical output: displayed in the Files/Help/Plots panel *usually* at the bottom right of the Window.

---

## Getting help in RStudio

If you want to know more about what a function or package does, type a `?` followed by the function's name

```
?function_name
```

Help is going to be available in the bottom right pane of RStudio.

---

## The Files Pane Importance

When you open in RStudio a `.R` or `.Rmd` file the RStudio, the current working directory is **not** neccesarily the project working directory, or the directory of the file you opened.

---

## Where am I? (or the files pane)

**EVERY SESSION** you need to tell RStudio what your `working directory` is. Especially if you are loading different files.

You can find out where you are by:

1. typing `getwd()` in the console

2. In the files panel, click the cog/More button and then click "Go To Working Directory"

---

## Setting your Working Directory

Set your working directory to the root directory of the Git repository you are working in (we'll talk about Git and Github later)!

You can set the working directory using the following 3 ways:

1. In the Session menu, click Set Working Directory and then Choose Directory. Navigate the opened file browser to choose the directory. 

2. In the files panel, navigate the file structure to where you want the working directory to be. Then click the cog/More button and then click "Set As Working Directory"

3. type `setwd("PATH")` in the console.

---

## Setting the working directory is important!

If you are working in RStudio and you start feeling lost, you probably forgot to set the working directory.

We will see how to create R Projects later which will help us keep our directory clean.

**Suggestion:** Try using the [here](https://github.com/jennybc/here_here) package instead.

---

# Let's Practice!
