# Web-Scraping-for-News-in-R
### How to scrape web data in R and use it to create your own custom reports.

This project will show you how to create your own report and generate it on a daily basis into a folder of your choosing.

This is a great project for anyone who would like to tailor what information they see on a particular day. Personally, I find having a daily newsletter that provides you with the latest details on news, events, financial information, etc. and automating it has many uses in both personal and professional settings.

One can go one step further and email the newsletter but that goes slightly beyond what we are trying to achieve.

### How to use this project.

There are 3 parts to to this, and these need to be generated in the following order:
- 1. The newsletter. This is created by running an RMarkdown file. This file, names "Newsletter.Rmd" pulls data by using API which pull stock data as well as scrape the web for news articles.
- 2. The render function, which takes the script and runs it. 
- 3. The cron file, which helps you automate the render file at specific times