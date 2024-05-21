#Trim data
lr04_trimmed <- lr04 %>%
  filter(Year < 3000)

#Extend the 'Year' column to be continuous and annual over the trimmed interval
Year_interp <- seq(ceiling(min(lr04_trimmed$Year)), floor(max(lr04_trimmed$Year)), by = 1)

#Use a linear fit to interpolate the d18O series
d18O_interp <- approx(lr04_trimmed$Year, lr04_trimmed$d18O, xout = Year_interp, f = 0.5)$y

#Put these new vectors into a data frame
lr04_interp <- data.frame(Year=Year_interp,
                          d18O=d18O_interp)
