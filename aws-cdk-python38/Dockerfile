FROM amazon/aws-sam-cli-build-image-python3.8:latest

ARG CDK_VERSION
WORKDIR /work

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN \
  yum install -y jq nodejs \
  && yum clean all

COPY requirements.txt /work
RUN echo ${CDK_VERSION} > /etc/CDK_VERSION \
  && sed -i -e "s/$/==${CDK_VERSION}/" requirements.txt \
  && npm install -g aws-cdk@${CDK_VERSION} \
  && pip3 install pip --upgrade \
  && pip3 install -r requirements.txt

CMD ["/bin/bash"]
