### Put the path to your file name here:

filepath <- "~/path/to/file/example_123_234_456_NA_NA.csv"

### Then run the rest of this script

check <- function(f){
  forecasts = read.csv(f,header=FALSE)
  if(!is.data.frame(forecasts)){stop("Did not read in as dataframe. There's an issue with your csv")}
  if(ncol(forecasts)!=1){stop("There are multiple columns in your data. While this is a csv, there should be no commas in the raw file, only one number per line over 10 lines.")}
  if(nrow(forecasts)!=10){stop("There are not 10 rows in this dataset. Please make sure you are submitting forecasts for the next 10 periods.")}
  print("Your file has passed all but the eye test. Does this look correct to you? It should say V1 as the column name and 1,...,10 as the row names, with your 10 forecasts inserted")
  print(forecasts)
}

check(filepath)