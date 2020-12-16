FROM amazon/aws-sam-cli-build-image-python3.8:latest

ARG CDK_VERSION

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN \
  yum install -y python3-devel jq nodejs \
  && npm install -g aws-cdk@${CDK_VERSION} \
  && pip3 install pip --upgrade \
  && pip3 install aws-cdk.core==${CDK_VERSION} \
  && yum clean all
RUN echo ${CDK_VERSION} > /etc/CDK_VERSION
