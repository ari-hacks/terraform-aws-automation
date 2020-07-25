# Automating AWS with Terraform

## Pre-requisite Setup 

#### AWS Account - Free Tier
- [Sign up](https://aws.amazon.com/free) for AWS Free Tier account if you do not already have one
  
#### Create an IAM user
   1. Log into your root AWS account
   2. Select Services > IAM
   3. On the left nav bar select 'Users'
   4. Select 'Add user'
   5. Create a username 'terraform-admin'
   6. Select AWS access type as Programmatic access (and AWS management console access to view resources on the dashboard)
   7. Select Next: Permissions
   8. Select Create group
   9. Add a group name 'admins'
   10. Check AdministratorsAccess and Create group, check group
   11. Select Next: Tags 
   12. Select Next: Review 
   13. Select Create User
   14. You will need the generated access key Id, and the secret access key (Download the csv provided or store these values)
   

#### AWS CLI installation
  1. mac: `brew install awscli` | `aws --version`
  2. windows: [instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-windows.html)
  3. linux:   [instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html)

#### AWS CLI configuration 
   1. aws basic configuration   
```
        aws configure   
        AWS Access Key ID [None]: <access key>
        AWS Secret Access Key [None]: <secret key>
        Default region name [None]: us-east-1
        Default output format [None]: json
```

   
#### Terraform installation
   1. mac: `brew install terraform` | `terraform -help`
   2. windows: `choco install terraform` | `terraform -help`
   3. linux: [download](https://www.terraform.io/downloads.html) | `echo $PATH` | ` mv ~/Downloads/terraform /usr/local/bin/` | `terraform -help`