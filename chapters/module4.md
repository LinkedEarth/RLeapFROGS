---
title: 'Module 4: Data Visualization'
description:
  'This module will teach you techniques for data visualization using the ggplot2 package'
prev: /module3
next: /module5
type: chapter
id: 4
---

<exercise id="1" title="packge: ggplot2">

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

## Let's dive in deeper.

</exercise>
