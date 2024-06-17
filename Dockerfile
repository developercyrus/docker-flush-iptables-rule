FROM ubuntu:24.04

RUN apt -y update
RUN apt -y install iptables      

COPY flush.sh /usr/local/bin/flush.sh

RUN chmod +x /usr/local/bin/flush.sh

CMD ["/usr/local/bin/flush.sh"]

