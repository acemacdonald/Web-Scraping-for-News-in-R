require("cronR")
# list the contents of a crontab
cron_ls()
# list the full path of where the rscript is located
path = # Enter the path
# Create a command to execute an R-script
cmd = cron_rscript(path)
# add the command and specify the days/times to start
cron_add(command= cmd, frequency = 'daily', at="07:00", days_of_week = c(1:7),
         id = 'Newsletter', description = 'Newsletter Execution')
# remove it by 'id'
cron_rm(id = "Newsletter")


## For email procedure

path = # Enter the path
# Create a command to execute an R-script
cmd = cron_rscript(path)
# add the command and specify the days/times to start
cron_add(command= cmd, frequency = 'daily', at="22:04", days_of_week = c(1:5),
         id = 'Mail', description = 'Mail Execution')
# remove it by 'id'
cron_rm(id = "Mail")
