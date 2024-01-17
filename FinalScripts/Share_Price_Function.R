### Share Price Fetcher

# Function to return share price and latest trading date of specified ticker
# and returns a table.

# Function to return share price and latest trading date for multiple tickers
# and returns a table.

# tidyquant
# quantmod
# tidyverse

library(tidyquant)
library(quantmod)
library(tidyverse)
library(rvest)
library(knitr)

fetch_shareprice <- function(ticker) {
  
  # Specify ticker and current date
  stock_ticker <- ticker
  datestring <- Sys.time()
  current_date <- as.Date(datestring) - 1

  stock_data <- getSymbols(stock_ticker, from = current_date,
                          warnings = FALSE,
                           auto.assign = FALSE)
  
  stock_price <- stock_data[1,4]
  last_trading_day <- date(stock_data)
  
  stock_price_df <- as.data.frame(stock_price)
  names(stock_price_df) <- "xcol"
  share_df <- stock_price_df %>% add_column("Last Trading Day" = last_trading_day) %>% rename("Share Price" = "xcol")
  
  print(share_df, row.names = FALSE)
}

# Fetch for multiple tickers

my_data <- fetch_shareprice("AAPL")
kable(my_data, caption = "Latest Share Price of Apple")

