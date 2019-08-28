FROM williamyeh/java8

RUN apt-get update && apt-get install -y curl unzip

ENV JBILLING_VERSION 4.1.1
USER root
RUN wget "http://downloads.sourceforge.net/project/jbilling/jbilling%20Latest%20Stable/jbilling-${JBILLING_VERSION}/jbilling-community-${JBILLING_VERSION}.zip" -O jbilling.zip \
	&& unzip jbilling.zip -d /usr/local \
	&& rm jbilling.zip \
	&& ln -s "jbilling-community-${JBILLING_VERSION}" /usr/local/jbilling

WORKDIR /usr/local/jbilling/bin
RUN chmod +x *.sh

EXPOSE 8080
CMD ["/bin/sh", "./catalina.sh", "run"]
