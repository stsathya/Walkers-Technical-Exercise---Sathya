# ASP.NET Demo App with YAML CI/CD Pipeline Configuration

# Introduction
Deploy Web Application to Azure using Infrastructure as Code(IaC). This web application takes number between 1 and 20 and returns a JSON

# Getting Started
1. Download Git repository from link(https://github.com/stsathya/Walkers-Technical-Exercise---Sathya.git) and import to Azure Devops Repo

2. Create Service connection
- Go to Project Settings 
- Select Service Connections 
- Click New Service Connection
- Select Azure Resource manager from the list and click Next
- Select Service Principle(automatic) and click Next
- Select Subscription level and specify Service Connection Name as "AzureSC"

3. Create New Pipeline with the existing pipeline file 'azure-pipelines.yaml' available in root folder of imported Azure repo.
4. Run the pipeline

# Test Web Application
Post the successful pipeline deployment, go to browser and test below link
'https://walkwebappdockeracr.azurewebsites.net/assignment/api/{id}'

Instead of {id}, pass number between (1 to 20) to get JSON output.

To try from POSTMAN or any other API tool:

GET https://walkwebappdockeracr.azurewebsites.net/assignment/api/{id}
