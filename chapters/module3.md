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

Let's have a summary look at ```iris```

<codeblock id="03_01">
</codeblock>

In the above code, we use ```read.csv()``` to load the data. This function applies specific settings to a more generic function, ```read.table()``` which you may also find useful. Remember, you find out more about a function by simply typing ```?read.table()``` into your R console.

We also use ggplot to visualize our time series. ggplot offers tremendous flexibility for data visualization and we will see a few more examples in this course. You can learn more about ggplot from the [free online book](https://ggplot2-book.org/).

</exercise>

<exercise id="2" title="dplyr">

In the last module we loaded a csv file.

Data tables, which you may be accustomed to using as Excel spredsheets, are called data frames in R.

Data frames store data in two dimensions with column names and optional row names.

Let's alter our original data.

<codeblock id="03_02">
</codeblock>

Our new data frame ```lr04_interp``` covers a shorted time interval, but we now have a time serious with a 'regular sampling interval', annual in this case. This will allow us to do some particular analyses.

</exercise>
