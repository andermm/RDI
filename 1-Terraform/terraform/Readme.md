# Terraform Assessment

This module aims to assess the candidate's Terraform knowledge by asking a number of questions. It is recommended to have terraform installed as it may make it easier for you to share your working

## Scenario

A junior member of staff has written some terraform. They have asked you to help

## Question 1

Your colleague appears to be having errors when testing their terrform. Please help by fixing the terraform for them and walking through what you did.

### Answer

1 - Added the correct variable in the varibles.tf file.
2 - Corrected the name of the resource, which is "aws_instance".

## Question 2

The terraform would need its state storing and this code has not been added. Please write some terraform so that the state can be stored safely

### Answer

1 - Added terraform block in the provider.tf file. This block specifies storing the terraform backend in an S3 bucket, with encryption enabled, and using a Dynamo DB table to lock the backend and prevent several users from simultaneously updating it.

## Question 3

A new request to add a SQL database has come in. It would interact with the service currently being created here. Please suggest a resource that would fill this requirement and write the terraform to create this.

### Answer

1 - Added a new Security group and the AWS DB Instance.
