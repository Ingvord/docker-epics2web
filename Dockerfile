FROM tomcat:9-alpine

COPY lib/* /usr/local/tomcat/lib/
COPY epics2web.war /usr/local/tomcat/webapps/epics2web.war

ARG epics_ca_addr_list
ENV EPICS_CA_ADDR_LIST=$epics_ca_addr_list

CMD ["catalina.sh", "run"]
