FROM openjdk:8-jre-slim

ENV SONAR_SCANNER_FILE=sonar-scanner-cli-3.0.3.778

RUN apt-get update \
  && apt-get install wget --assume-yes

RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/${SONAR_SCANNER_FILE}.zip -P /tmp
RUN unzip /tmp/${SONAR_SCANNER_FILE}.zip -d /usr/local/sonar-scanner
RUN rm /tmp/${SONAR_SCANNER_FILE}.zip

RUN ln -s /usr/local/sonar-scanner/sonar-scanner-3.0.3.778/bin/sonar-scanner /usr/bin/sonar-scanner
RUN ln -s /usr/local/sonar-scanner/sonar-scanner-3.0.3.778/bin/sonar-scanner-debug /usr/bin/sonar-scanner-debug

RUN apt-get remove --purge wget --assume-yes
