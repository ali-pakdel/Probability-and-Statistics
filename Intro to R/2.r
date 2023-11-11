library(ggplot2)
library(vcd)
outcome <- read.csv("outcome.csv",header = TRUE, na.strings=c("","NA"))

print(colnames(outcome))
head(outcome)


table(outcome$race)
table(outcome$native.country, outcome$income)

income_country <- list(with(outcome, table(income, native.country)))
income_country <- data.frame(income_country)

ggplot(income_country, aes(native.country, Freq, fill = income)) +     
  geom_col(position = "dodge") +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
      scale_y_continuous(trans = "log10")


education_income <-with(outcome, table(education, income))
mosaic(education_income, shade = T, direction = "h", rot_labels=c(0, 90, 0, 0))


ggplot (data=outcome, aes(x=age, color = age)) + stat_ecdf()

  

