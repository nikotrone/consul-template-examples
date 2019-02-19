FROM hashicorp/consul-template:alpine
COPY . .
ARG INPUT_FILE=test.ctmpl
RUN consul-template -template "${INPUT_FILE}.ctmpl:/tmp/${INPUT_FILE}.conf" -once &&\
cat /tmp/${INPUT_FILE}.conf
