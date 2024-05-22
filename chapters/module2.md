---
title: 'Module 2: First R project'
description:
  'This module will guide you through development of your first R project'
prev: /module1
next: /module3
type: chapter
id: 2
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

<exercise id="4" title="dplyr (continued)">

Let's take a more advanced case for ```dplyr```. Maybe we need to subset by ```Sepal.Length``` values, convert ```Petal.Width``` to a logarithmic scale, sort the data frame by ```Sepal.Width```, and extract 3 columns of interest for plotting

<codeblock id="03_04">
</codeblock>

That operation is accomplished with very little code, and it's very human-readable.

These are the basic functions of dplyr, but they can be extended by adding any number of other functions. You might for example apply a more complex calculation that ```log()```. The extensibility of ```dplyr``` is immense.

Thus far, we've been working with data frames, but the ```tibble``` is another useful class that improves the simple visualization toos for datasets, particularly as the size and dimensionality grows.

</exercise>

<exercise id="5" title="tidyr and tibble">

The ```tibble``` package, alongside ```tidyr```, ```dplyr```, and ```ggplot2```, are all part of ```tidyverse```. This set of packages follow an inuitive underlying philosophy which make data science in R much easier. These packages are designed to work together, and the effort required to learn them will repay itself quickly with enhanced speed and quality in your code.

tibbles allow for a more complex data structure. For example, each cell of a column could contain a list. That list could be a single value, a vector, or another list. This offers the ability for nested data structures.

<codeblock id="03_05">
</codeblock>

The ```print``` method for ```tibble``` offers more information in a compact format than the ```print``` method for ```data.frame```

So, to read the code above:
1) Start with the iris tibble
2) subset the 3 columns of interest
3) nest the sepal lengths and widths by species, such that we are left with only one row per species

Well, I would call that pretty tidy. This dataset may not be too hard to digest in its original form, but you could imagine how helpful this could be for a 100,000 row dataset.

Next, we'll move on to visualization.

</exercise>

<exercise id="6" title="packge: ggplot2">

In this module you'll learn the basics of ggplot2, a package for producing a wide array of data visualizations. This is not a complete guide, merely an introduction to the package.

There is an excellent free online book that you can refer to for more examples and explanantions [here](https://ggplot2-book.org/).

<codeblock id="04_01">
</codeblock>

Okay, so not a lot of code there. We get a reasonably nice plot though.

Let's break down what's happening:

* the function ```ggplot()``` accepts the arguments ```data``` and ```mapping```.
* The first is self explanatory.
* The ```mapping``` argument sets up a formatting for the data. In this case we have:
  -  ```Sepal Width``` plotted on the x-axis,
  -  ```Petal Length``` plotted on the y-axis, and
  -  ```Species``` is mapped to the plot coloring.
* This mapping will apply to any variety of plot we want to make.
* Finally, we use the function ```geom_point()``` to make a scatter plot
* Notice that ```geom_point``` is added with a ```+```. This is how we add layers to a ggplot object.
  - In this case the base layer has all the necesary mapping information without any indication of a visualization method.
  - The second layer assigns a method.
* In the following exercises we will introduce many additional layers which allow much customization, but these two layers will generally exist (in various forms) for all ggplot objects 

Let's dive in deeper.

</exercise>

<exercise id="7" title="time series in ggplot">

As this course is focused on time series, most of our visulaization examples will include lines. We'll throw in a couple of other examples as well for summarizing other data types.

First, let's make a time series. We will use the astrochron package for this, but you could choose from many other options.

We'll create a 500-point time series with an even time step of 1 and first-order autocorrelation of 0.9.

Additionally, let's make a second time series by adding some noice to the first.

And before we do any plotting we'll reformat the data for ggplot. We can only assign one 'y aesthetic', so we need to use the function ```gather``` to reorganize our data. We put all the time series values into one column and we make a new column for the grouping of these values into their respective Series.

Let's see what a default plot looks like.

<codeblock id="04_02">
</codeblock>

Okay, not bad for just running with the defaults. We could use a title, maybe some formatting, and I like to add summary stats to plots. Let's customize!

</exercise>

<exercise id="8" title="advanced time series plot">

Knowing a little bit about time series, we should expect that adding noice will reduce autocorrelation. In this case we should also anticipate an increased standard deviation because the amplitude of the added noise was relatively big relative to the standard deviation of the original time series. Let's calculate those values for our next plot.

We'll have to put these values into text strings using ```paste0()```, then put them into a data frame for use by ```geom_label()```.

\* Note here that ```data``` and ```mapping``` inputs are inherited by default from ```ggplot()``` by all ```geom```s, but unique arguments can be given to any particular ```geom```.

Finally, let's add a descriptive title. I'll indulge in one more stat here.

<codeblock id="04_03">
</codeblock>

We added 4 new lines (layers) to out ```ggplot```, and hopefully we've created a much more useful visualization of our time series. Let's go through the new layers:

* ```theme_classic()``` There are many themes (all beginning with 'theme_' that will change the appearance of the plot, such as background shading, axis and gridline appearance, etc. All of these can be manipulated manually with the additional call to ```theme()```.
* ```facet_wrap``` Faceting separates the data into sub-plots. In this case we break it up by series and organize the 2 plots vertically by specifying ```ncol=1```.
* ```geom_label()``` No we are adding an additional ```geom```, which also allows us to bring in a new data frame and/or new aesthetics. In this case we use the ```ts_labs``` data and manually assign where it is placed.
* ```ggtitle()``` Finally, we add our title which was previously assigned to a variable, ```final_title```

Let's do one more plot, a map.

</exercise>

<exercise id="8" title="maps">

Making maps in ggplot will often include an extension package. Leaflet is very useful and can provide interactivity for web pages. Here we'll build a static map using the ```maps``` package to define the country borders.

We'll plot recent earthquakes on our world map. The earthquakes data frame was downloaded from the USGS Earthquake Catalog, pulling all 2.5+ magnitude earthquakes between 4/21/2024 - 5/22/2024.

First, we need to read in the world country borders and clean up the data a little.

Next, we'll reorganize the data for ggplot.

We build this plot starting from the data frame. We use a "mollweide" projection. We also use ```theme()``` to manually move the legend beneath the map.

Another new idea is ```scale_color_gradient()```. The options for using color in your plots are extensive. Here, we have a continuous gradient from grey to red with values assigned based on magnitude. 

<codeblock id="04_04">
</codeblock>

This is a fairly simple map, but you get a sense of what's possible. You might imagine adding population densities by country to get a sense for hazards on this map.

We'll see more plots from ggplot in the time series analysis tutorials. Meanwhile, find inspiration from an array of ggplot visulations [here](https://r-graph-gallery.com/).

Next, we'll get into time series analysis. From here on we'll be largely focused on theory, so the code will be a little less central, but we will link totutorials in R for you to explore.

</exercise>
