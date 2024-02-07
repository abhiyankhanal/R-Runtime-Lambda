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
    *One-time command:* Only needs to be executed once to create the ECR repository.

2. **Build Docker Image:**
    ```bash
    make build
    ```
    *Run as needed:* Execute this whenever the content of the Dockerfile changes.

3. **Tag Docker Image:**
    ```bash
    make tag
    ```
    *Run as needed:* Needed to tag the Docker image before pushing.

4. **Login to ECR Registry:**
    ```bash
    make login
    ```
    *One-time command:* Only needs to be executed once per session or when credentials expire.

5. **Push Docker Image to ECR Repository:**
    ```bash
    make push
    ```
    *Run as needed:* Execute this to push the Docker image to the ECR repository.

6. **Clean Local Docker Images:**
    ```bash
    make clean
    ```
    *Run as needed:* Use this to remove local Docker images, especially for cleanup.

## AWS CloudFormation Deployment

### Prerequisites
- AWS CLI configured with the necessary credentials and permissions.

### Steps

1. **Deploy CloudFormation Stack:**
    ```bash
    make deploy-template
    ```
    *Run as needed:* Execute this whenever you want to deploy or update the CloudFormation stack.

2. **Delete CloudFormation Stack:**
    ```bash
    make delete-stack
    ```
    *Run as needed:* Execute this to delete the CloudFormation stack.

## Constants
- **ECR_URI:** Amazon ECR repository URI.
- **FUN_VER:** Lambda function version.
- **STACK_NAME:** AWS CloudFormation stack name.
- **PROFILE:** AWS CLI profile name.
- **REGION:** AWS region.
