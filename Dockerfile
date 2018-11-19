FROM maven:alpine
RUN apk update;apk add git
WORKDIR /app
RUN git clone https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git;
RUN cd mwdumper;ls;mvn compile;mvn package
RUN cd mwdumper/target;mv mwdumper*.jar ../../mwdumper.jar
COPY *.sh ./
#VOLUME /dumps
#VOLUME /sql

RUN apk add mariadb-client

ENV DB_USER=root
ENV DB_PASSWORD=foobarbaz
ENV DB_DATABASE=mirror
ENV DB_HOST=mirror-database-master

ENV DUMP_URL="https://dumps.wikimedia.org/enwiki/20181101/enwiki-20181101-pages-meta-current1.xml-p10p30303.bz2"

ENTRYPOINT ["/app/convert.sh"]
