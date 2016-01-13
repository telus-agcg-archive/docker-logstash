FROM logstash:2.0.0-1

WORKDIR "/usr/bin" 
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "awscli"]
RUN ["plugin", "install", "logstash-output-amazon_es"]

WORKDIR "/opt/logstash"
COPY . "/opt/logstash"
CMD ["/bin/bash"]
