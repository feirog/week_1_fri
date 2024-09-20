library(readr)
library(tidyverse)
library(ggplot2)


# Import our data
df = read.csv('C:/Users/s2101370/Downloads/DSHBS/data_science/week_1_fri/scurvy.csv')

# Explore data
glimpse(df)
summary(df)

# Separate numerals in variables

df$gum_rot = as.integer(substr(df$gum_rot_d6,1,1))
df$fit_for_duty = as.integer(substr(df$fit_for_duty_d6,1,1))
df$skin_sores = as.integer(substr(df$skin_sores_d6,1,1))

df$severity_score <- df$gum_rot + df$skin_sores

geom_bar(data=df, aes(x=treatment, y=severity_score))
