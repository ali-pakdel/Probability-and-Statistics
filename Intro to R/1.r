data_file <- read.csv("exam_data.csv")

cat("Minimum and maximum grades of first exam are:", min(data_file[, 1]), ",", max(data_file[, 1]), "\n")

cat("Minimum and maximum grades of second exam are: ", min(data_file[, 2]), ",", max(data_file[, 2]), "\n")

cat("Median of first exam is:", median(data_file[, 1]), ", median of second exam is:", median(data_file[, 2]), "\n")

cat("Average of first exam is:", mean(data_file[, 1]), ", AVG of second exam is:", mean(data_file[, 2]), "\n")

cat("VAR of first exam is:", var(data_file[, 1]), ", VAR of second exam is:", var(data_file[, 2]), "\n")

grade_difference <- abs(data_file[, 1] - data_file[, 2])
boxplot(grade_difference)

quantile(grade_difference, prob=c(0,.25,.5,.75, 1))
