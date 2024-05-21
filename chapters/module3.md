---
title: 'Module 3: Data Frames'
description:
  'This module will teach you techniques for manipulating data frames.'
prev: /module2
next: /module4
type: chapter
id: 3
---

<exercise id="1" title="What's a data frame?">

In this module we will be working with data frames which are included with the basic R installation including ```mtcars``` and ```iris```

Data tables, which you may be accustomed to using as Excel spredsheets, are called data frames in R.

Data frames store data in two dimensions with column names and optional row names.

Let's have a look at ```iris```

<codeblock id="03_01">
</codeblock>

```class(iris)``` tells us we have a ```data.frame``` object

```dim(iris)``` tells us we have 150 rows and 5 columns

```head(iris)``` shows us the first few rows

```summary(iris)``` provides summary statistics of each column

```plot(iris)``` offers x-y scatter plots for each column pairing

* Note: the functions ```summary()``` and ```plot()``` have specific functionality for data frames, but these functions operate differently for other object classes

</exercise>

<exercise id="2" title="subset a data frame">

Let's do some basic subsetting of the ```iris``` data frame

<codeblock id="03_02">
</codeblock>

Okay, so subsetting is simple using the column index values. Since our data frames have 2 dimensions, we provide subset values as ```[row indices,column indices]```

Subsetting gets a little cumbersome when we apply logical filters. ```iris$Sepal.Length < 4.9``` tells R to provide a vector of boolean responses such that we have a TRUE/FALSE for each value of ```Sepal.Length```.

In general, base R can be used for data frame manipulation, but it is verbose and difficult to read

Let's try something different

</exercise>

<exercise id="3" title="dplyr">

```dplyr``` is one of the most widely used R packages. Visit the [website](https://dplyr.tidyverse.org/) to learn more.

Writing code for dpylr is a little different from what we've seen so far, but the interpretation is much more intuitive.

Let's start by replicating what we did in the last exercise.

<codeblock id="03_03">
</codeblock>

This code is a bit easier to read, and as the operation get's more complex, the advantages of dplyr become incresingly apparent. Subseting, filtering, and data manipulation can be chained with the ```%>%``` (called the pipe operator).

</exercise>

<exercise id="3" title="dplyr (continued)">

Let's take a more advanced case for ```dplyr```. Maybe we need subset by ```Sepal.Length```, convert ```Petal.Width``` to an exponential scale, and sort the data frame by ```Sepal.Width```

<codeblock id="03_04">
</codeblock>

That operation is accomplished with very little code, and it's very human-readable.

</exercise>
