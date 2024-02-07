# Matchy AWS SAM Deployment Guidelines

Follow these steps to deploy the **Matchy** AWS serverless application using AWS Serverless Application Model (SAM).

## Prerequisites

1. AWS Account
2. [AWS CLI](https://aws.amazon.com/cli/) installed and configured
3. [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html) installed

## Steps for Deployment

### 1. Clone the Repository

Clone the Git repository that contains your AWS SAM template.

```bash
git clone <repository_url>
```

Navigate to the project directory containing AWS SAM template file.

```bash
cd <project_directory>
```

**Note:** Replace `<repository_url>` & `<project_directory>` with your actual repository URL and directory respectively.

### 2. Build the Application

The `sam build` command is used to compile deployment packages for Lambda functions and layers in your application.

```bash
sam build
```

### 3. Package the Application

Run the `sam package` command to create a zipped deployment package of your serverless application and upload it on S3 bucket.

```bash
sam package --output-template-file packaged.yaml --s3-bucket <your_s3_bucket_name>
```
**Note:** Replace `<your_s3_bucket_name>` with the name of your S3 bucket.

### 4. Deploy the Application

Finally, use the `sam deploy` command to deploy your application.

```bash
sam deploy --template-file packaged.yaml --region <your_aws_region> --capabilities CAPABILITY_IAM --stack-name <your_stack_name>
```
**Note:** 
- Replace `<your_aws_region>` with your desired AWS region.
- Replace `<your_stack_name>` with your desired AWS Stack Name.



After executing these commands, your AWS serverless application will be successfully deployed. You can navigate to the AWS Console -> CloudFormation Stacks to view your newly created resources and their status.