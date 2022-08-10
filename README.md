# terraform-aws-infra-redis
This is the repository to creating/maintaining the AWS ElasticCache Infrastructure for multiple Environments

## Table of contents:
- [terraform-aws-infra-redis](#terraform-aws-infra-redis)
  - [Table of contents:](#table-of-contents)
  - [Overview](#overview)
  - [Module Usage](#usage)
  - [Pre-Requisites](#pre-requisites)
  - [Environments](#environments)
  - [What's Included](#whats-included)
  - [Deploying IAC](#deploying-iac)
  - [Docs](#docs)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Inputs](#inputs)
  - [Outputs](#outputs)
  

## Overview
This is the infra repository which consumes the terraform module to spin up an AWS ElastiCache Cluster.
The terraform module will be controlled through its dedicated release numbers which can keep changing over time whenever any new changes are pushed to the module itself.

## Module Usage 
```hcl
module "usa-elasticache" {
  source = "git@github.com:Kartheeko07/terraform-aws-elasticache-module.git?ref=LATEST_VERSION"

  ...

  tags = var.tags
}
```

## Pre-Requisites

1. Work with an AWS Account Admin to provision an IAM User with needed permissions that will leverage to deploy TF IaC.
2. Work with an AWS Account Admin for your respective accounts to create a global TF Backend Infrastructure
3. Create a secret configuration in the tool of choice that will be used to orchestarte the secrets to store your AWS Secret Details

## Environments
1. Each branch is mapped to an environment.tfvars which inturn is mapped to a terraform workspace
    For example --> Branch Staging is mapped to staging.tfvars
    Terraform Workspace --> staging
2. Note only for main we have a special condition where it is mapped to production
3. All other feature branches should be created with feature/
4. Pipeline/GH Action will be set to run only against the branches that doesnt have feature/

## What's Included
- `.github` ->  directory which contains Github specific files
  - `workflows` -> directory which contains Github workflows
    - `terraform-compliance.yml` -> GH Action which is triggered when changes are pushed to main/staging branches which checks the TF plan against the TF Compliance Rules
    - `terraform-lint.yml` -> GH Action which make sure proper TF linting is followed on all the branches  
- `.gitignore` -> gitignore file prepopulated with typcial configurations for Terraform projects
- `.pre-commit-config.yaml` -> configuration file for `pre-commit`
  - useful as a safety net to catch potential issues **before** they consume resources on Continuous Integration server
  - has specific hooks for Terraform repositories
- `main.tf`/`outputs.tf`/`providers.tf`/`variables.tf` -> typical files found in a Terraform module
  - stubbed out for ease of implementation
  - pushing to follow standard file naming conventions
- `*.tfvars` -> respective of the branch you're on (develop == develop.tfars || staging == staging.tfvars || main == production.tfvars || uat == uat.tfvars || sandbox == sandbox.tfvars) This file represents the unique variable inputs for a respective environment.
- `backend.tf` -> this file is used with to associate your IAC with remote state infrastructure in S3/DDB.

## Deploying IAC
1. Make sure all your module code and providers for all regions is put in 
2. Steps to make sure your code runs
    - `ENVIRONMENT=BRANCH_NAME`
    - `terraform init`
    If using a backend S3 bucket
    - `terraform init -backend-config="bucket=$TF_STATE_BUCKET" -backend-config="key=$REPO_NAME" -backend=true - -backend-config="dynamodb_table=$TF_LOCK_TABLE"`
    Setting the workspace
    - `terraform workspace select ${ENVIRONMENT} || terraform workspace new ${ENVIRONMENT}`
    - `terraform plan -out=plan.out -var-file ${ENVIRONMENT}.tfvars`
    - `terraform apply plan.out`

## Docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0, < 0.15.0 |

## Providers

No provider.

## Inputs

No input.

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

1. Configure `pre-commit` to run the hooks for every new repo you checkout.  https://pre-commit.com/#automatically-enabling-pre-commit-on-repositories 
```
git config --global init.templateDir ~/.git-template
$ pre-commit init-templatedir ~/.git-template
$ pre-commit init-templatedir -t pre-commit -t commit-msg ~/.git-template
```
Alternatively run `pre-commit install -t pre-commit -t commit-msg` for each repo

Now simply run manually via: `pre-commit run -a`
