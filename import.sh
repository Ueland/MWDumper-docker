for url in `cat manifest.txt`:
do
	echo "docker run --rm --name mwdumper-$(echo $url | cut -d'-' -f6 | cut -f1 -d'.') --network 2018-demo -e MYSQL_PASSWORD=${MYSQL_PASSWORD} -e DUMP_URL=\"$url\" axisofentropy/mwdumper-docker"
	docker run --rm --name mwdumper-$(echo $url | cut -d'-' -f6 | cut -f1 -d'.') --network 2018-demo -e MYSQL_PASSWORD=${MYSQL_PASSWORD} -e DUMP_URL="$url" axisofentropy/mwdumper-docker
done
