# Makefile for building and pushing Docker image to ECR

AWS_REGION = us-east-1
ECR_REPO_NAME = parity-lambda69
DOCKER_IMAGE_NAME = r-on-lambda
ECR_URI = 684378237653.dkr.ecr.$(AWS_REGION).amazonaws.com

create-repo:
	aws ecr create-repository --repository-name $(ECR_REPO_NAME) --image-scanning-configuration scanOnPush=true

build:
	docker build -f Dockerfile -t $(DOCKER_IMAGE_NAME) .

tag:
	docker tag $(DOCKER_IMAGE_NAME):latest $(ECR_URI)/$(ECR_REPO_NAME):latest

login:
	aws ecr get-login-password --region $(AWS_REGION) | docker login --username AWS --password-stdin $(ECR_URI)

push:
	docker push $(ECR_URI)/$(ECR_REPO_NAME):latest

clean:
	docker rmi $(DOCKER_IMAGE_NAME):latest $(ECR_URI)/$(ECR_REPO_NAME):latest

.PHONY: create-repo build tag login push clean

# constants

ECRRepositoryUri =example_stack_name
FunctionVersion =latest


deploy-template:
	aws cloudformation deploy \
	--template-file ./template.yaml \
	--stack-name MyContainerLambdaStack \
	--capabilities CAPABILITY_IAM --profile root --region us-east-1 \
	--parameter-overrides \
		ECRRepositoryUri= ${ECRRepositoryUri}\
		FunctionVersion= ${FunctionVersion}
