---
title: 'Module 2: First R project'
description:
  'This module will guide you through development of your first R project'
prev: /module1
next: /module3
type: chapter
id: 2
---

<exercise id="0" title="Opening Rstudio" type="slides">

<slides source="chapter2_01_introduction_to_Rstudio">
</slides>

</exercise>

<exercise id="1" title="The R console">

The R console can be used to evaluate any R code.

This includes functioning as a simple calculator.

<codeblock id="02_01">
</codeblock>

You can see that R is a pretty good calculator. All of the functionality of a scientific calculator is built in to base R.

</exercise>

<exercise id="2" title="R classes">

R is a high-level language. In order to performcomplex tasks with little code, R makes lots of assumptions. 

This includes automated classification of inputs

<codeblock id="02_02">
</codeblock>

These examples will give you some starting assumptions. 

Typing an unquoted number into the console will give a 'numeric' classification, while quoted numbers become 'characters'. 'integer' objects are assigned explicity.

Read more about [classes](https://stat.ethz.ch/R-manual/R-devel/library/base/html/class.html)

</exercise>

<exercise id="3" title="value assignment">

Assignment in R is performed primarily with the following operator "<-", wherein an object is assigned a value such as 'a <- 1'

<codeblock id="02_03">
</codeblock>

After we assigned letters to the objects 'a', 'b', and 'c', the function 'c()' combined them to form a vector of length 3.

Read more about [assignment in R](https://stat.ethz.ch/R-manual/R-patched/library/base/html/assignOps.html)

</exercise>

<exercise id="3.1" title="an R project" type="slides">

Now that we've explored some of the basics from the console, let's create an R project to house our work

<slides source="chapter5_04_R_project">
</slides>

</exercise>

<exercise id="4" title="R functions">

If you have successfully initiated a new R project, you can add your first R script to the project to house the code you'll be writing.

You can decide for yourself how many files to create and how to separate topics. Hopefully these scripts can serve as notes for you to reflect on later.


R is a functional programming languange. Objects are created and altered by applying functions.

Functions accept a set of paramters, often called arguments.

Here's a first look at a simple function:

<codeblock id="02_04">
</codeblock>

Writing functions is simple, but requires a specific syntax.

</exercise>

<exercise id="5" title="R functions (cont)">

Let's expand our function by adding a new parameter.

Suppose were are tring to alphabetize our strings, so we sometimes use this new function to return the place in the alphabet of the first letter of our string.

We can add a new parameter, 'place', which takes a boolean (TRUE/FALSE) value.

<codeblock id="02_05">
</codeblock>

Notice that our new parameter triggers an 'if' switch, which in turn determines the type of output returned by the function.

'letters' is a built-in variable, a vector of the 26 letters of the alphabet. 'tolower()' is a function that takes letters and returns the lower-case equivalent.

comparing 'letters' with the first letter of the input 'string' using the '==' operator returns a set of 26 boolean values

the function 'which()' tells us which of the 26 boolean values are 'TRUE', and as 'z' is the 26th letter of the alphabet, we get 26

If we do not provide the 'place' argument, the default value of 'FALSE' is used, so we get the letter, 'z' in this case

Read more about [functions](https://r4ds.had.co.nz/functions.html)

</exercise>

<exercise id="6" title="Comment your code" type="slides">

<slides source="chapter2_06_comments">
</slides>

</exercise>


<exercise id="17" title="A Data Frame">

Data tables, which you may be accustomed to using as Excel spredsheets, are called data frames in R.

Data frames store data in two dimensions with column names and optional row names. mtcars is a data frame distributed with the basic R installation.

A popular package for manipulating data frames is dplyr.

<codeblock id="02_17">
</codeblock>

See more [data frame manipulation techniques from dpylr](https://dplyr.tidyverse.org/)

</exercise>


