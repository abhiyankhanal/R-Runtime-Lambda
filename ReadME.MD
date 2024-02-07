# Docker Image Build and AWS CloudFormation Deployment

This repository contains a `Makefile` to streamline the process of building a Docker image and deploying an AWS CloudFormation stack.

## Docker Image Build

### Prerequisites
- Docker installed on your machine.
- AWS CLI configured with the necessary credentials and permissions.

### Steps

1. **Create ECR Repository:**
    ```bash
    make create-repo
    ```

2. **Build Docker Image:**
    ```bash
    make build
    ```

3. **Tag Docker Image:**
    ```bash
    make tag
    ```

4. **Login to ECR Registry:**
    ```bash
    make login
    ```

5. **Push Docker Image to ECR Repository:**
    ```bash
    make push
    ```

6. **Clean Local Docker Images:**
    ```bash
    make clean
    ```

## AWS CloudFormation Deployment

### Prerequisites
- AWS CLI configured with the necessary credentials and permissions.

### Steps

1. **Deploy CloudFormation Stack:**
    ```bash
    make deploy-template
    ```

2. **Delete CloudFormation Stack:**
    ```bash
    make delete-stack
    ```

## Constants
- **ECR_URI:** Amazon ECR repository URI.
- **FUN_VER:** Lambda function version.
- **STACK_NAME:** AWS CloudFormation stack name.
- **PROFILE:** AWS CLI profile name.
- **REGION:** AWS region.
