# MWDumper-docker

Docker image that fetches the latest version of MWDumper from https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git, 
builds it and runs it. You must specify some environment variables:
* MYSQL_HOST 
* MYSQL_USER
* MYSQL_PASSWORD
* MYSQL_DATABASE
* DUMP_URL - Address for a Mediawiki dump file
