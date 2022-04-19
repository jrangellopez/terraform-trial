Steps to follow:

1- Install Terraform locally
    https://learn.hashicorp.com/tutorials/terraform/install-cli

2- Create file main.tf
    This contains the required providers for Terraform and the definition of the providers. In this case only the provider "commercetools" is added, with the corresponding variables (client id, client secret, etc)

3- Create file variables.tf
    Definition of the variables to be used across the .tf files

4- Run the command 'terraform init'
    This will make the initial dependency selections that will initialize the dependency lock file

5- Create file project.tf
    This file contains the project settings for the resource 'commercetools_project_settings'

6- Run the command "terraform import <resource name> <project key>"
    e.g. terraform import commercetools_project_settings.project terraform_trial
    The project itself needs to be set up already. Before applying any changes, the project needs to be imported

7- Run the command 'terraform validate'
    It checks whether the configuration is valid

8- Run the command 'terraform plan'
    It shows changes required by the current configuration

9- Run the command 'terraform apply'
    It creates or updates infrastructure

10- Check in Merchant Center, if the changes have been applied


To connect with AWS S3 Bucket
1- Create free tier account in AWS

2- Create a S3 bucket
    https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html

3- Create an IAM user 
    https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html
    This user should be part of a group with permission to access S3 data

4- Create an access key and secret key for the user and store this

5- Install AWS CLI locally
    https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html
    Follow the steps and during the Quick Setup, create the default profile

6- Add the credentials in main.tf

7- Run 'terraform init', if the connection is successful the system will ask if S3 should be used a backend


Terraform best practices
1- Manipulate state file only through TF commands
2- Always set up a shared remote storage for the state file (so everyone can use it) e.g. S3 Bucket, Terraform Cloud, etc...
3- Use state locking until writing of state file is completed. To avoid that several developers make changes at the same time. S3 bucket supports automatic locking
4- Back up your state file e.g. enabling versioning in S3 bucket
5- Use 1 State per Environment
6- Host TF scripts in its own repositoy for effective team collaboration and version control for IaC code
7- Treat TF just like the Application Code. This means Review TF Code and run Automated Tests 
8- Execute Terraform in an automated build only through CD pipeline (automated build)

adding a change