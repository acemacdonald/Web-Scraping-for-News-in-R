## Install and Load Packages
library(rvest)

## We will be using the tutorials news sites for now

esg_news <- read_html("https://esgnews.com/skanska-issues-usd400-million-new-green-bonds/")

esg_news %>% 
  html_node("title") %>% 
  html_text()

# Let's pull all the latest headlines from ESG news.

esg_main_page <- read_html("https://esgnews.com")

library(rvest)
library(knitr)

# URL of the "ESG News" website
url <- "https://esgnews.com"

# Read the HTML content from the webpage
webpage <- read_html(url)

# Extract all article titles using CSS selectors
titles <- webpage %>%
  html_nodes(".tt-breaking-post a") %>%
  html_text()

# Extract all article links  using CSS selectors
links <- webpage %>%
  html_nodes(".tt-breaking-post a") %>%
  html_attr("href")

# Display the titles
titles[1:10]
links

# Fetching the first 10 articles
first_10_titles <- titles[1:10]
first_10_links <- links[1:10]

# Combine titles and links into a data frame
data <- data.frame(Title = first_10_titles, Link = first_10_links)
View(data)

markdown_table <- kable(data, format = "markdown")

# Print the RMarkdown table
cat(markdown_table)

getwd()
setwd('/folder/where/the/file/is/')
> source('file_name')`
