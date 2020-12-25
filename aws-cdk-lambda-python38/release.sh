#!/bin/bash
set -eu
CDK_VERSION=$(cat CDK_VERSION)
git tag -a ${CDK_VERSION} -m "CDK version: ${CDK_VERSION}"
git push origin --tags
