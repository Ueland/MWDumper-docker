# MWDumper-docker

Docker image that fetches the latest version of MWDumper from https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git, 
builds it and runs it. You must specify two volumes:
* /dumps - Location of dump files to convert
* /sql - Location of resulting SQL files
