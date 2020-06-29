FROM python:3.8.3-alpine3.12

RUN apk add --no-cache \
        build-base \
        libffi-dev \
        openssl-dev

RUN pip install --user ansible

ENTRYPOINT ["/usr/local/bin/ansible"]