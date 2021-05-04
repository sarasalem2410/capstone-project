# CircleCi Status

[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://app.circleci.com/pipelines/github/sarasalem2410/capstone-project/5/workflows/5c7e457c-8448-4740-aa3f-b45eb60eaa3e)

## Project Overview hi

In this Cloud DevOps capstone project, I applied most of the skills which I acquired during this Cloud DevOps Nanodegree.

* Using AWS Platform to demonstrate my porject.
* Using hadolint to lint dockerfile.
* using Make file.
* Using CircleCi to build my CI/CD pipeline.
* Build Docker Image in my CI/CD pipeline
* Using CircleCi EKS orbs to deploy cluster.

## CI/CD pipeline stages

* linting
in this step I linted my flask app as well as dockerfile using Make file step `make lint`

* build docker image
In this step I built my docker image and pushed it the dockerhub

``` yaml
docker build --tag=capstone .
docker images ls
dockerpath="sarasalem2410/capstone"
docker tag capstone:latest $dockerpath
echo "Docker ID and Image: $dockerpath"
echo "$DOCKER_PASS" | docker login --username $DOCKER_USER --password-stdin
docker image push $dockerpath  
```

* Using EKS CircleCi orbs to deploy the cluster

## Refs

[EKS CircleCi Orbs](https://circleci.com/developer/orbs/orb/circleci/aws-eks)
