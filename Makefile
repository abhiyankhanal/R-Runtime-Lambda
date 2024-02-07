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