library(astrochron)
library(tidyverse)

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

#initial plot
ggplot(data = df2, mapping = aes(x=Time, y=Value, color=Series)) +
  geom_line()

#grab vectors for summary stats
vec_A <- df2 %>% filter(Series == "A") %>% pull(Value)
vec_B <- df2 %>% filter(Series == "B") %>% pull(Value)

#calculate summary stats for plot labels
sd_A <- round(sd(vec_A), 2)
sd_B <- round(sd(vec_B), 2)
AR1_A <- round(acf(vec_A)$acf[2], 2)
AR1_B <- round(acf(vec_B)$acf[2], 2)

#organize stat labels
stat_labels <- paste0(paste0("SD = ", c(sd_A, sd_B), ", "),
                      paste0("AR1 = ", c(AR1_A, AR1_B)))
ts_labs <- data.frame("Series" = c("A","B"),
                      "label" = stat_labels)

final_title <- paste0("Original Series A and noise-added Series B with correlation r = ", round(series_cor,2))

#build new plot
ggplot(data = df2, mapping = aes(x=Time, y=Value)) +
  geom_line() +
  theme_classic() +
  facet_wrap(~Series,ncol = 1) +
  geom_label(data = ts_labs, mapping=aes(x=-Inf, y=-Inf, vjust=0.0, hjust=0.0, label = label)) +
  ggtitle(final_title)
