#!/bin/bash

set -eu

if [ -z ${CDK_VERSION+x} ];
then
    echo "Must set CDK_VERSION to run this script."
    exit -1;
else
    echo "CDK VERSION: $CDK_VERSION";
fi

docker build -f Dockerfile -t masahif/aws-cdk-lambda-python3.8:$CDK_VERSION --build-arg CDK_VERSION=$CDK_VERSION .
