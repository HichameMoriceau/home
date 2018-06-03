# log_user

Simple command to log when a given user is active on the machine. I use this to measure how many hours I spend on my machine at work.

### Install:
- Clone this repo
- Run `make`

### Uninstall:
- Run `make clean`

### Usage with cron:

```
$ crontab -e
0 * * * * log_user --user=yourusername
```
