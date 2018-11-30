FROM maven:alpine
RUN apk update; apk add git; apk add mariadb-client
WORKDIR /app
RUN git clone https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git;
RUN cd mwdumper;ls;mvn compile;mvn package
RUN cd mwdumper/target;mv mwdumper*.jar ../../mwdumper.jar
COPY *.sh ./

ENV MYSQL_USER=root \
    MYSQL_PASSWORD=foobarbaz \
    MYSQL_DATABASE=wikidb \
    MYSQL_HOST=10.23.203.15

ENV DUMP_URL "https://dumps.wikimedia.org/enwiki/20181101/enwiki-20181101-pages-meta-current1.xml-p10p30303.bz2"

ENV SHA1SUM_URL "https://dumps.wikimedia.org/enwiki/20181101/enwiki-20181101-sha1sums.txt"

ENTRYPOINT ["/app/convert.sh"]
