library(ggplot2)

countries <- read.csv("countries.csv",header = TRUE, na.strings=c("","NA"))
temp_countries1 <- na.exclude(countries)
temp_countries2 <- subset(temp_countries1, select = -c(Country, Region))

cor(Data, use = "complete.obs")
ggplot(temp_countries2, aes(x=Agriculture, y=Birthrate)) +
  geom_point()

avg_agriculture <- mean(Data[, 16])
avg_birthrate <- mean(Data[, 14])

fix <- avg_agriculture / avg_birthrate

len <- length(countries[, 1])
for (i in 1:len)
{
  if (is.na(countries[i, 16]))
  {
    countries[i, 16] = avg_birthrate
  }
  if (is.na(countries[i, 18]))
  {
      countries[i, 18] = countries[i, 16] * fix
  }
}

