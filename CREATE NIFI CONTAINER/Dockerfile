FROM apache/nifi:latest

USER root
RUN apt-get update && apt-get install -y mc
USER nifi
COPY postgresql.jar /opt/nifi/nifi-current/lib/
RUN ./bin/nifi.sh set-single-user-credentials admin Zadonsky12345