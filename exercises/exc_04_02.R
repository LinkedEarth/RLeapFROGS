suppressMessages(library(astrochron))
suppressMessages(library(tidyverse))

#set seed (for reproducibility)
set.seed(599)

#generate a time series using the default parameters
ts1 <- armaGen(npts = 500, rhos=c(0.9), m = 0, std = 1, verbose = FALSE)

#add a second time series as ts1 plus noice
df1 <- ts1 %>%
  mutate(V3 = V2 + rnorm(n=500,mean=0, sd=1))

#rename the columns and look at the data frame
colnames(df1) <- c("Time","A", "B")
head(df1)
series_cor <- cor(df1$A, df1$B)

#Reorganize the data frame in long format for ggplot
df2 <- df1 %>%
  gather(key="Series", value = "Value", A, B)
head(df2)

#initial plot
ggplot(data = df2, mapping = aes(x=Time, y=Value, color=Series)) +
  geom_line()

