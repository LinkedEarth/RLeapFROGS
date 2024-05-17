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

<exercise id="2" title="indexing, filtering, etc">

Let's do some basic subsetting of the ```iris``` data frame

<codeblock id="03_02">
</codeblock>

Okay, so subsetting is simple using the column index values. Since our data frames have 2 dimensions, we provide subset values as ```[row indices,column indices]```

</exercise>
