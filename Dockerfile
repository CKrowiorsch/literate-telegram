FROM docker.elastic.co/kibana/kibana:6.3.0
LABEL Author = "Christian Krowiorsch"

RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.28/logtrail-6.3.0-0.1.28.zip

COPY logtrail.json ./plugins/logtrail/logtrail.json