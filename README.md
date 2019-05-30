# MWDumper-docker

Docker image that fetches the latest version of MWDumper from https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git, 
builds it and runs it. You must specify some environment variables:
* MYSQL_HOST
* MYSQL_USER
* MYSQL_PASSWORD
* MYSQL_DATABASE
* DUMP_URL - URL for a Mediawiki dump file
* SHA1SUM_URL - URL for a Mediawiki SHA1 checksum file

This repository also includes an example script `import.sh` to launch several containers sequentially.
