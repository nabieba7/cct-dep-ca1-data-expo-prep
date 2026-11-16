column_names <- c(
  "age", "workclass", "fnlwgt", "education",
  "education_num", "marital_status", "occupation",
  "relationship", "race", "sex", "capital_gain",
  "capital_loss", "hours_per_week", "native_country",
  "income"
)

adult_train <- read.table(
  "data/adult.data",
  sep = ",",
  header = FALSE,
  col.names = column_names,
  strip.white = TRUE,
  na.strings = "?",
  stringsAsFactors = FALSE
)
adult_test <- read.table(
  "data/adult.test",
  sep = ",",
  header = FALSE,
  col.names = column_names,
  strip.white = TRUE,
  na.strings = "?",
  stringsAsFactors = FALSE,
  skip = 1
)
adult_test$income <- sub("\\.$", "", adult_test$income)
adult <- rbind(adult_train, adult_test)
dim(adult)           # Number of rows and columns
head(adult)          # First six records
str(adult)           # Column names and data types
table(adult$income) 