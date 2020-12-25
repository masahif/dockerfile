#!/bin/bash
set -eu

if [ -z ${CDK_VERSION+x} ];
then
  CDK_VERSION=$(cat CDK_VERSION)
else
  echo "CDK VERSION: $CDK_VERSION"
fi
docker build -f Dockerfile -t aws-cdk-lambda-python3.8:$CDK_VERSION --build-arg CDK_VERSION=$CDK_VERSION .
