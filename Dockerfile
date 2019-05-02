FROM hashicorp/consul-template:alpine
COPY . .
ARG INPUT_FILE=test
RUN echo "Input file: ${INPUT_FILE}"
RUN consul-template -template "${INPUT_FILE}.ctmpl:/tmp/${INPUT_FILE}.conf" -once
RUN cat /tmp/${INPUT_FILE}.conf
