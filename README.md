# devops_sample_scripts
handy utilities for reducing amount of administration chores

## Practice_1
Notes:
1. set the BACKUP_PATH environment variable to the desired backup path before running the script. 
You can add this line to your .bashrc or .bash_profile file:
```
   export BACKUP_PATH="/path/to/backup/files"
```
2. To schedule the script to run recurrently, you can use the crontab utility. 
Run the following command to edit your user's crontab file.
```
   crontab -e
```   
3.  In this example it runs on 15th minute every hour:
```
   export BACKUP_PATH="/path/to/backup/files"
```
4. Demonstrated work with branches. Sample PR created
## Practice_2
Screenshot of created AWS acc added to the package
## Practice_3
Created bash script for AWS to install docker daemon in EC2