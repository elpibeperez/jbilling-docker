# jbilling-docker
Docker file for running jbilling 4.1.1 inside a docker using hsql

To build the docker image: 
docker build -t jbilling-community-4.1.1 -f Dockerfile .

To run docker image:
docker run -d -p 8080:8080 jbilling-community-4.1.1

To view catalina logs from current docker
docker logs -f <container name>
