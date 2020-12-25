FROM python:3.8-alpine

ARG CDK_VERSION
WORKDIR /work

RUN apk --no-cache update \
  && apk --no-cache upgrade \
  && apk --no-cache add nodejs npm jq bash

COPY requirements.txt requirements-cdk.txt /work/
RUN echo ${CDK_VERSION} > /etc/CDK_VERSION \
  && sed -i -e "s/$/==${CDK_VERSION}/" requirements-cdk.txt \
  && npm install -g aws-cdk@${CDK_VERSION} \
  && pip3 install -r requirements-cdk.txt

RUN pip3 install -r requirements.txt

CMD ["/bin/bash"]
