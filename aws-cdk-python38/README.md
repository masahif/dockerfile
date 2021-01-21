# AWS CDK with Python3.8

## how to build
CDK_VERSION=1.80.0 ./build.sh

## CLI
```
$ docker run -it --rm -v $(pwd):/work masahif/aws-cdk-python38

bash-4.2#
```

## run CDK directly
```
$ docker run --rm -v $(pwd):/work masahif/aws-cdk-python38 cdk list

cdk-app
```


## docker hub
https://hub.docker.com/repository/registry-1.docker.io/masahif/aws-cdk-python38/
