## Kyle's Mac Configurations

Some code I use to setup new laptops. Philosophies:

* Don't reinvent the wheel. I've been using these configurations for years, across many computers.
* Configure once, not for every project. I am a web developer with many clients, and often when called into a new project I'm in something of a rush. Making setting up new-to-me projects quickly is critical.
* Prefer UI when elegant native apps exist. Command line when not. 
  * For example, Tower 2 (Git application) is far better than command line
  * Transmit is far better than rsyncing files or trying to login to S3.

## Apache / DNSMasq

Map `.mac` to `127.0.0.1`, then configure `/Sites` so you can add `newsite.mac` and access it at `http://newsite.mac` instantly, without Apache/Hostsfile edits

## Dock

Put spaces in Dock and then lock it so it can't get dragged around and your icons don't get accidently removed
