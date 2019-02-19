FROM hashicorp/consul-template:alpine
COPY . .
RUN consul-template -template "test.ctmpl:/tmp/test.conf" -once &&\
cat /tmp/test.conf
