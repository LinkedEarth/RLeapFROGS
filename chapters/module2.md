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

<slides source="chapter5_01_introduction_to_Rstudio">
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

Typing an unquoted number into the console will give a "numeric" classification, while quoted numbers become "characters". "integer" objects are assigned explicity.

</exercise>

<exercise id="2" title="R functions">

R is a functional programming languange. Objects are created and altered by applying functions.

Functions accept a set of paramters, often called arguments.

<codeblock id="02_03">
</codeblock>

Writing functions is simple, but requires a specific syntax.

</exercise>


<exercise id="17" title="A Data Frame">

Data tables, which you may be accustomed to using as Excel spredsheets, are called data frames in R.

Data frames store data in two dimensions with column names and optional row names. mtcars is a data frame distributed with the basic R installation.

A popular package for manipulating data frames is dplyr.

<codeblock id="02_17">
</codeblock>

</exercise>


