#!/bin/bash
export KUBE_CONFIG_PATH=~/.kube/config

echo "opentelemtry-demo/1ClickAddons.sh: adding opentelemtry-demo"
##terraform logs
nowtime=`date +"%m_%d_%Y_%s"`
(mkdir -p ./tflogs)
export TF_LOG="INFO"
export TF_LOG_PATH="./tflogs/terraform-$nowtime.log"

set -e

helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts


echo "opentelemtry-demo/1ClickAddons.sh: coping variable files"
cp -f ../../../variables.tf .
cp -f ../../../terraform.tfvars .

echo "opentelemtry-demo/1ClickAddons.sh: creating opentelemtry-demo"
##terraform logs
# initialize terraform configuration
terraform init

# validate terraform configuration
terraform validate

# create terraform plan
terraform plan -out state.tfplan 

# apply terraform plan
terraform apply state.tfplan
echo "opentelemtry-demo/1ClickAddons.sh: finished creating opentelemtry-demo"
