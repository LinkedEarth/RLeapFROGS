#load df2 from last exercise
df2 <- read.csv("https://raw.githubusercontent.com/LinkedEarth/RLeapFROGS/main/public/module2/module2_df2.csv")

#grab vectors for summary stats
vec_A <- df2 %>% filter(Series == "A") %>% pull(Value)
vec_B <- df2 %>% filter(Series == "B") %>% pull(Value)

#calculate summary stats for plot labels
#some of this may look confusing. We are using the function 'sd()' iside of the function round. The innermost function always runs first
sd_A <- round(sd(vec_A), 2)
sd_B <- round(sd(vec_B), 2)
#Note here that the 'acf()' function returns a list. We use the '$' operator to extract one part of that list and take the second value from the resulting vector of autocorrelations
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
