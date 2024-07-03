---
title: 'Module 3: Timeseries analysis'
description:
  "This module provides an introduction to timeseries analysis."
prev: /module2
next: /module4
type: chapter
id: 3
---

The following exercises will test your understanding of timeseries. Each module has associated [practicums](https://linked.earth/R_pyrates_practicums/) which provide practical examples in R.

<exercise id="1" title="Timeseries Anatomy">

This training introduces you to key concepts in timeseries analysis.

The slides can be accessed [here](https://figshare.com/ndownloader/files/46758307). Please read the presentation, as well as other helpful materials (e.g. [Part 2 of this book](https://figshare.com/articles/book/Data_Analysis_in_the_Earth_Environmental_Sciences/1014336)) and the first R timeseries [tutorial](https://linked.earth/R_pyrates_practicums/introduction-to-timeseries.html),
 then answer the following questions:

**Questions**

Do all timeseries need to be evenly-spaced?

<choice id="03-01">
<opt text="No", correct="true">
Many timeseries, particularly in the geosciences, are unevenly spaced. However, even spacing is assumed by many methods, so care must be taken.
</opt>
<opt text="Yes">
It is true that many methods _assume_ even spacing, but that is by no means a requirement. </opt>
</choice>

If your analysis requires even spacing, what should you do? (multiple answers possible):

<choice id="03-02">
<opt text="Interpolation", correct="true">
Interpolation is good; make sure to pick a low polynomial order (linear interpolation tends to be safest)
</opt>
<opt text="Binning", correct="true">
Binning in coarser, even intervals is another possible option
</opt>
<opt text="Gaussian kernel", correct="true">
Binning in coarser, even intervals with some Gaussian smoothing is another possible options
</opt>
<opt text="Change analysis methods">
That is always available to you, but it is an extreme step. For one thing, there may not be an easily accessible, alternative method for what you are trying to do. And getting to even spacing might be less painful than you think (see options above)
</opt>
</choice>
</exercise>

<exercise id="2" title="Data Processing">

The slides for this section can be accessed [here](https://figshare.com/ndownloader/files/46758307). Please read the presentation, as well as other helpful materials (e.g. [Part 2 of this book](https://figshare.com/articles/book/Data_Analysis_in_the_Earth_Environmental_Sciences/1014336)), then do the [tutorial](https://linked.earth/R_pyrates_practicums/signal-processing-in-r.html).


**Questions**:

Can linear regression help remove non-linear trends?

<choice id="03-03">
<opt text="Yes", correct="true">
You're correct!
</opt>
<opt text="No">
The "linear" part of linear regression is that timeseries components are considered additive (up to a scaling factor). So if you know what the trend should be, whether linear or not (e.g. exponential, quadratic), it is easy to specify it to a linear model so it can be removed.
</opt>
</choice>

Which of those filters would help remove variability from a certain frequency band?

<choice id="03-04">
<opt text="Bandpass filter">
A bandpass filter does the opposite
 </opt>
<opt text="Notch filter", correct="true">
You win!
</opt>
<opt text="Wiener filter">
That's a very interesting filter, but that's not what it does.
</opt>
</choice>

</exercise>

<exercise id="3" title="Measures of Association">

The slides can be accessed [here](https://figshare.com/ndownloader/files/46731670). Please read the presentation, as well as other helpful materials (e.g. [Part 2 of this book](https://figshare.com/articles/book/Data_Analysis_in_the_Earth_Environmental_Sciences/1014336)), and relevant [tutorial](https://linked.earth/R_pyrates_practicums/association.html), then answer the following questions:

**Questions**

What is the best correlation statistic?

<choice id="03-05">
<opt text="Pearson's R">
Good, not best
</opt>
<opt text="Spearman's rho">
Good, not best
</opt>
<opt text="Kendall's tau">
Good, not best
</opt>
<opt text="There is no best one. Each statistic has pros and cons", correct="true">
You win!
</opt>
</choice>

What implicit assumption is made when testing for the significance of Pearson's R? (multiple possible answers)

<choice id="03-06">
<opt text="Data are causally related">
Correlation says nothing about causation
</opt>
<opt text="Data are independent", correct="true">
Yes, and ... ?
</opt>
<opt text="Data are identically distributed", correct="true">
Correct
</opt>
<opt text="Data are linearly related">
it is true that a linear relationship is measured by R, but that does not affect the significance estimate.
</opt>
</choice>

Under those assumptions, the null distribution for Pearson's R is:

<choice id="03-07">
<opt text="a Gaussian distribution">
Not quite
</opt>
<opt text="A Gamma distribution">
Nope
</opt>
<opt text="Student's t distribution", correct="true">
Yes indeed
</opt>
</choice>

When the data are not independent, e.g. because of serial correlation, how may this test be corrected?

<choice id="03-08">
<opt text="Reduce the degrees of freedom as n_eff = n (1-g)/(1+g), where g is the lag-1 autocorrelation", correct="true">
Yes, though when g is close to 1, even that is not enough.
</opt>
<opt text="Switch the null distribution to a Monte Carlo Markov Chain">
That sounds impressive, but it is complete gibberish
</opt>
<opt text="Switch the test statistic to Kendall's tau">
No. The null distribution for Kendall's tau also assumes independence, so that won't help.
</opt>
</choice>

</exercise>

<exercise id="4" title="Surrogates">

The slides can be accessed [here](https://figshare.com/ndownloader/files/46768567). Please read the presentation, then answer the following questions:

**Questions**

What are surrogates?

<choice id="03-09">
<opt text="Surrogate is another name for duplicate"">
No.
</opt>
<opt text="Estimators of timeseries properties">
No.
</opt>
<opt text="Helper timeseries that emulate aspects of the original", correct="true">
Yes indeed
</opt>
</choice>

Why are surrogates needed in the first place?

<choice id="03-10">
<opt text="They are not needed; their use is entirely optional"">
If only!
</opt>
<opt text="They are needed when assumptions of standard statistical tests are violated", correct="true">
Yes, and that is nearly every time in the geosciences.
</opt>
</choice>

In `astrochron`, how does one invoke phase-randomized surrogates, e.g. for a correlation test?

<choice id="03-11">
<opt text="using the default arguments to `surrogateCor()` function call", correct="true">
Yes, it's that simple.
</opt>
<opt text="using `method = 'ebisuzaki'` in the `correlation()` function call">
It is indeed Ebisuzaki's method. Have a look at the help documentation.
</opt>
<opt text="They are not available in astrochron">
You really think we would do that to you?
</opt>
</choice>

</exercise>

<exercise id="5" title="Spectral Analysis">

The slides can be accessed [here](https://figshare.com/ndownloader/files/46768570). Please read the presentation, as well as other helpful materials (e.g. [Part 2 of this book](https://figshare.com/articles/book/Data_Analysis_in_the_Earth_Environmental_Sciences/1014336)), and relevant [tutorials](https://linked.earth/R_pyrates_practicums/spectral-analysis-in-r.html), then answer the following questions:

**Questions**
How would you find out what spectral methods are available in `R` (several possible correct answers)?

<choice id="03-13">
<opt text="Use the documentation of known statistical packages", correct="true">
If you are familiar with some stats packages already, you might look at the documentation for useful functions
</opt>
<opt text="Try a search engine", correct="true">
If you have a specific spectral method you want to use and don't know where to start, try searching something like: 'lomb-scargle in R'
</opt>
</choice>

In `R`, how can one perform spectral analysis on unevenly-spaced timeseries?

<choice id="03-14">
<opt text="You cannot do that; spectral analysis always assumes evenly-spaced data.">
Oh yes you CAN!
</opt>
<opt text="Regrid to a uniform time grid", correct="true">
</opt>
<opt text="Use a method designed to handle uneven gaps, like the Lomb-Scargle periodogram", correct="true">
Correct.
</opt>
</choice>


In `R`, how do you estimate the scaling behavior of a timeseries?

<choice id="03-16">
<opt text="apply `lm()` to model a PSD object", correct="true">
Ain't that nice?
</opt>
<opt text="Write an R function to perform least squares regression">
You could, but this has already been done for you `lm()`.
</opt>
<opt text="Use `predict(PSD)`">
That function will get you the coordinates of the line, but you need a linear model first.
</opt>
</choice>

Why is it sometimes desirable to remove a seasonal cycle from a geoscience series prior to conducting spectral analysis?

<choice id="03-17">
<opt text="The cycle might obscure more subtle signals in the series", correct="true">
Well done.  
</opt>
<opt text="Spectral analysis is about eliminating harmonics">
It definitely isn't about that at all.
</opt>
<opt text="Cycles create aliasing and leakage, and need to be removed">
I see you like impressive words! Unfortunately, they are used in the wrong way here.
</opt>
</choice>
</exercise>


<exercise id="6" title="Wavelet Analysis">

The slides can be accessed [here](https://figshare.com/ndownloader/files/46768570). Please read the presentation, and relevant [tutorials](https://linked.earth/R_pyrates_practicums/wavelet-transform-in-r.html), then answer the following questions:

**Questions**

Why do wavelet analysis when you can just do spectral analysis?

<choice id="03-18">
<opt text="Wavelet plots look a lot more colorful">
True, but not a good enough reason
</opt>
<opt text="Wavelets are oscillatory">
So are sines and cosines! Think about what sets them apart.
</opt>
<opt text="Wavelets have good localization, so can handle non-stationary data, unlike spectral analysis, which assumes stationarity.", correct="true">
Now we're talking.  
</opt>
</choice>

On a scalogram like [this one](http://linked.earth/PyRATES_practicums_py/_images/2562b92cfe80024a5dde0ee17b21d85ec6167b32bb844268cfa611b82134f6c0.png), what is the name of the region shaded in white?

<choice id="03-19">
<opt text="Cone of influence", correct="true">
</opt>
<opt text="Shadow zone">
More poetic, but much less true.
</opt>
<opt text="Significance region">
No!
</opt>
</choice>

What is the meaning of this region?

<choice id="03-20">
<opt text="Wavelet amplitude in this region is significant">
This notion is distinct from statistical significance. It's wavelet-specific.
</opt>
<opt text="Wavelet amplitude in this region is anomalously high">
</opt>
<opt text="The region were edge effects are felt", correct="true">
Anything in this region is unreliable.
</opt>
</choice>

In the R package `biwavelet` how can you compute the scalogram of a timeseries?

<choice id="03-21">
<opt text="wtc()">
Close, but not quite
</opt>
<opt text="wt()", correct="true">
</opt>
<opt text="xwt()">
This function computes the cross-wavelet
</opt>
</choice>

In `biwavelet` how can you assess the significance of the regions of a scalogram?

<choice id="03-22">
<opt text="wt(significance = TRUE)">
Close, but not quite
</opt>
<opt text="wt(do.sig = TRUE)", correct="true">
</opt>
</choice>

What does coherence measure?

<choice id="03-23">
<opt text="phase alignment in a band of frequencies/scales", correct="true">
</opt>
<opt text="common power in a band of frequencies/scales">
</opt>
<opt text="robustness">
</opt>
<opt text="replicability">
</opt>
</choice>

What best describes the wavelet transform coherency (WTC)?

<choice id="03-24">
<opt text="Common power in wavelet space">
That's XWT, which is the numerator of WTC, but not the whole thing.
</opt>
<opt text="A Pearson correlation coefficient in wavelet space", correct="true">
Nice work.
</opt>
<opt text="The continuous wavelet transform of a correlation coefficient">
A correlation coefficient is a single number; it does not have a transform.
</opt>
</choice>

</exercise>
