# constants

ECR_URI=684378237653.dkr.ecr.us-east-1.amazonaws.com/parity-lambda
FUN_VER=latest
STACK_NAME=MyContainerLambdaStack
PROFILE=root
REGION=us-east-1

# DEPLOY
deploy-template:
	aws cloudformation deploy\
    --template-file ./template.yaml\
    --stack-name $(STACK_NAME)\
    --capabilities CAPABILITY_IAM --profile $(PROFILE) --region $(REGION)\
    --parameter-overrides\
        ECRRepositoryUri=$(ECR_URI)\
        FunctionVersion=$(FUN_VER)
# Delete
delete-stack:
	aws cloudformation delete-stack\
    --stack-name $(STACK_NAME)\
    --profile $(PROFILE)\
    --region $(REGION)
