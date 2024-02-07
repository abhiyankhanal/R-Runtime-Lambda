#TODO
Docker Image Build and AWS CloudFormation Deployment
This repository contains a Makefile to streamline the process of building a Docker image and deploying an AWS CloudFormation stack.

Docker Image Build
Prerequisites
Docker installed on your machine.
AWS CLI configured with the necessary credentials and permissions.
Targets
create-repo: Creates an Amazon Elastic Container Registry (ECR) repository.
build: Builds a Docker image using the provided Dockerfile.
tag: Tags the Docker image with the ECR repository URI.
login: Logs in to the ECR registry.
push: Pushes the Docker image to the ECR repository.
clean: Removes local Docker images.
Example Usage:
bash
Copy code
make create-repo
make build
make tag
make login
make push
make clean
AWS CloudFormation Deployment
Prerequisites
AWS CLI configured with the necessary credentials and permissions.
Targets
deploy-template: Deploys a CloudFormation stack using the provided template.
delete-stack: Deletes the CloudFormation stack.
Example Usage:
bash
Copy code
make deploy-template
make delete-stack
Constants:
ECR_URI: Amazon ECR repository URI.
FUN_VER: Lambda function version.
STACK_NAME: AWS CloudFormation stack name.
PROFILE: AWS CLI profile name.
REGION: AWS region.
