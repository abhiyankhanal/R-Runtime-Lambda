# Lambda Function Documentation
# Matchy AWS SAM Template

This is the Serverless Application Model project named **Matchy**.

## Overview

The project contains resources for the following:

- AWS Lambda Function
- Amazon DynamoDB Tables
- Amazon Cognito UserPool 

### AWS Lambda Function - MatchyLambdaFunction  

This is a Nodejs18.x based AWS lambda function. It has FullAccess to AmazonDynamoDB. The Lambda function handles different HTTP methods under different API paths. 

### Amazon DynamoDB Tables

There are two DynamoDB tables in this template:

1. **UserTable**: This table stores information about the user.
2. **SessionDynamoDBTable**: This table stores information related to the user's sessions.

Both tables have been optimized for specific query patterns with Local and Global secondary indexes.

### Amazon Cognito UserPool - MatchyUserPool  

This resource is a user management and authentication service, enabling user sign-up/in etc.


## AWS Lambda Function API Events

Here are some API events that the function handles:

- `POST /user_create`: Adds a new user.
- `GET /appointments`: Lists all appointments.
- `POST /meeting`: Creates a new meeting.
- `PUT /meeting/{id}`: Edits an existing meeting.
- `GET /clients`: List all clients.
- `GET /sessions`: Retrieves client session information.
- `POST /client/info`: Adds additional client information.
- `GET /profile/{id}`: Gets profile details of a particular user.
- `PUT /profile/{id}`: Edits profile of a particular user.
- `POST /link/{id}`: Sets personal link of a user.
- `POST /availability`: Sets availability of a user.
- `POST /preferences`: Sets preferences of a user.
- `PUT /status/{id}`: Updates session status of a user.
- `PUT /payment/{id}`: Edits payment details of a user.

## Amazon DynamoDB Tables Indexes for efficient query

We can add as many attributes we like in dynamo db table. But below are the attributes which we can use to search in the database efficiently.

**UserTable** Indexes:

- `id` (Number - Primary Key)
- `email` (String - Sort Key)
- `client_profession` (String)
- `city` (String)
- `experience` (Number)
- `age_group` (String Set)
- `user_type` (String)

**SessionDynamoDBTable** Indexes:

- `id` (Number)
- `client_email` (String - Primary Key)
- `time_begin` (String - Sort Key)
- `price` (Number)
- `currency` (String)
- `status_payment` (String)
- `type` (String)