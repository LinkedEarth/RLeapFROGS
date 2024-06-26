---
title: 'Module 1: Intro to R and RStudio'
description:
  'In this module, you will learn how to write your own basic R code.
  First, you will need to install R and RStudio on your computer. Make sure that you go through the material provided in the links before attempting the exercises. You have two solutions to attempt the exercise (1) Write directly into the console and click `run code`. You will be told whether your get the correct answer. If stuck, you can ask for a hint or show the solution. Note that the first time you do this, a cloud server will be set up and it may take some time. Also do not navigate away from the code block (e.g., by opening another exercise) as this will stop the execution. (2) Attempt this on your local machine and use the Show solution tab to verify that you did the exercise correctly. You can also use the hints to help you if you choose to run locally.'
prev: null
next: /module2
type: chapter
id: 1
---

<exercise id="1" title="R and RStudio" type="slides">

<slides source="chapter1_01_introduction">

</exercise>

<exercise id="2" title="Opening Rstudio" type="slides">

<slides source="chapter2_01_introduction_to_Rstudio">
</slides>

</exercise>

<exercise id="3" title="The R console">

The R console can be used to evaluate any R code.

This includes functioning as a simple calculator.

\* NOTE: Running your first code block may take some time as the remote binder (where these R scripts are executed) will take some time initializing. Make sure you also try running some code on your local machine.

<codeblock id="02_01">
</codeblock>

You can see that R is a pretty good calculator. All of the functionality of a scientific calculator is built in to base R.

</exercise>

<exercise id="4" title="R classes">

R is a high-level language. In order to performcomplex tasks with little code, R makes lots of assumptions. 

This includes automated classification of inputs

<codeblock id="02_02">
</codeblock>

These examples will give you some starting assumptions. 

Typing an unquoted number into the console will give a ```numeric``` classification, while quoted numbers become ```character``` objects. ```integer``` objects are assigned explicity.

Read more about [classes](https://stat.ethz.ch/R-manual/R-devel/library/base/html/class.html)

</exercise>

<exercise id="5" title="value assignment">

Assignment in R is performed primarily with the following operator ```<-```, wherein an object is assigned a value such as ```a <- 1```

<codeblock id="02_03">
</codeblock>

After we assigned letters to the objects ```a```, ```b```, and ```c```, the function ```c()``` combined them to form a vector of length 3.

Read more about [assignment in R](https://stat.ethz.ch/R-manual/R-patched/library/base/html/assignOps.html)

</exercise>

<exercise id="6" title="an R project" type="slides">

Now that we've explored some of the basics from the console, let's create an R project to house our work

<slides source="chapter5_04_R_project">
</slides>

</exercise>

<exercise id="7" title="R functions">

If you have successfully initiated a new R project, you can add your first R script to the project to house the code you'll be writing.

You can decide for yourself how many files to create and how to separate topics. Hopefully these scripts can serve as notes for you to reflect on later.


R is a functional programming languange. Objects are created and altered by applying functions.

Functions accept a set of paramters, often called arguments.

Here's a first look at a simple function:

<codeblock id="02_04">
</codeblock>

The output of ```substring("hello",1,3)``` and ```text1``` are the same, ```hel```. That's because these calls are doing the same thing.

When we create the new function ```firstLetter()```, the sole argument is ```string```. In our example, the variable ```string``` is assigned the value of ```"alphabet"```. Within the function, the variable ```string``` is reassigned to be the first letter of itself, "a" in this case.

Writing functions is simple, but requires a specific syntax.

</exercise>

<exercise id="8" title="R functions (cont)">

Let's expand our function by adding a new parameter.

Suppose were are tring to alphabetize our strings, so we sometimes use this new function to return the place in the alphabet of the first letter of our string.

We can add a new parameter, 'place', which takes a boolean (TRUE/FALSE) value.

<codeblock id="02_05">
</codeblock>

Notice that our new parameter triggers an ```if``` switch, which in turn determines the type of output returned by the function.

```letters``` is a built-in variable, a vector of the 26 letters of the alphabet. ```tolower()``` is a function that takes letters and returns the lower-case equivalent.

comparing ```letters``` with the first letter of the input ```string``` using the ```==``` operator returns a set of 26 boolean values

the function ```which()``` tells us which of the 26 boolean values are ```TRUE```, and as 'z' is the 26th letter of the alphabet, we get 26

If we do not provide the ```place``` argument, the default value of ```FALSE``` is used, so we get the letter, 'z' in this case

Read more about [functions](https://r4ds.had.co.nz/functions.html)

</exercise>

<exercise id="9" title="Comment your code">

Adding comments to your code can help in debugging purposes or sharing your code with others

Comments are added by using ```#```

The ```#``` does not need to come at the beging of a line, but everything on this line after the ```#``` will not be evaluated by R

<codeblock id="02_06">
</codeblock>

</exercise>

<exercise id="10" title="Onward!">

Okay, we have covered a lot of ground so far. Here's an additional resource to help: [Hands-On Programming with R](https://rstudio-education.github.io/hopr/)

</exercise>

