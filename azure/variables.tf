variable "agent_count" {
  default = 3
}

# The following two variable declarations are placeholder references.
# Set the values for these variable in terraform.tfvars
variable "aks_service_principal_app_id" {
  default = ""
}

variable "aks_service_principal_client_secret" {
  default = ""
}


variable "dns_prefix" {
  default = "oneclickeck"
}


variable "resource_group_location" {
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}



variable "aks_version" {
  description = "AKS Version"
  type        = string
  default     = "1.24.6"
}

variable "eck_version" {
  description = "ECK Version"
  type        = string
  default = "2.6.0"
}


variable "project" {
  description = "ClickDeployment Name"
  type = string
  default = "1ClickECK"
}

variable "vpc_id" {
  description = "vpc to be used during eks deployment"
  type = string
  default = "NA"
}


variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "1ClickEckOnEks"
    "Environment" = "Development"
    "Owner"       = "SA"
    "Owner"       = "SA"
  }
}


variable "k8s_master_instance_type" {
  description = "k8s Master instance type"
  type        = string
  default     = "Standard_D2_v2"
}

variable "master_instance_count" {
  description = "Number of master instances"
  type        = number
  default     = 1
}

variable "master_instance_type" {
  description = "Master instance type"
  type        = string
  default     = "standard_D8ads_v5"
}


variable "kibana_instance_count" {
  description = "Number of kibana instances"
  type        = number
  default     = 2
}

variable "kibana_instance_type" {
  description = "Kibana instance type"
  type        = string
  default     = "standard_B2ms"
}


variable "hot_instance_count" {
  description = "Number of hot instances"
  type        = number
  default     = 3
}

variable "hot_instance_type" {
  description = "Hot instance type"
  type        = string
  default     =  "standard_D32pls_v5"
}


variable "warm_instance_count" {
  description = "Number of warm instances"
  type        = number
  default     = 0
}


variable "warm_instance_type" {
  description = "warm instance type"
  type = string
  default     = "standard_E16ads_v5"
}


variable "cold_instance_count" {
  description = "Number of cold instances"
  type        = number
  default     = 0
}

variable "cold_instance_type" {
  description = "Cold instance type"
  type = string
  default     = "standard_E48ads_v5"
}



variable "frozen_instance_count" {
  description = "Number of frozen instances"
  type        = number
  default     = 0
}

variable "frozen_instance_type" {
  description = "frozen instance type"
  type = string
  default     = "standard_E96ads_v5"
}



variable "ml_instance_count" {
  description = "Number of ml instances"
  type        = number
  default     = 0
}

variable "ml_instance_type" {
  description = "ML instance type"
  type = string
  default     = "standard_D16ads_v5"
}


variable "util_instance_count" {
  description = "Number of util instances"
  type        = number
  default     = 1
}

variable "util_instance_type" {
  description = "util instance type"
  type = string
  default     = "standard_B2s"
}



variable "es_version" {
  description = "elasticsearch version"
  type = string
  default = "8.5.2"
}

variable "master_pod_count" {
  description = "number of master pods"
  type = number
  default = 1
}

variable "master_pod_cpu" {
  description = "master pod cpu request"
  type = string
  default = "6500m"
}

variable "master_pod_memory" {
  description = "master pod memory request"
  type = string
  default = "11264Mi"
}

variable "master_pod_storage" {
  description = "master pod storage request"
  type = string
  default = "140Gi"
}

variable "master_pod_ES_JAVA_OPTS" {
  description = "master pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}


variable "kibana_pod_cpu" {
  description = "kibana pod cpu request"
  type = string
  default = "1000m"
}

variable "kibana_pod_memory" {
  description = "kibana pod memory request"
  type = string
  default = "1Gi"
}

variable "kibana_pod_count" {
  description = "number of kibana pods"
  type = number
  default = 1
}

variable "hot_pod_count" {
  description = "number of hot pods"
  type = number
  default = 3
}

variable "hot_pod_cpu" {
  description = "hot pod cpu request"
  type = string
  default = "30000m"
}

variable "hot_pod_memory" {
  description = "hot pod memory request"
  type = string
  default = "53248Mi"
}

variable "hot_pod_storage" {
  description = "hot pod storage request"
  type = string
  default = "1600Gi"
}

variable "hot_pod_ES_JAVA_OPTS" {
  description = "hot pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}


variable "warm_pod_count" {
  description = "number of warm pods"
  type = number
  default = 1
}

variable "warm_pod_cpu" {
  description = "warm pod cpu request"
  type = string
  default = "14000m"
}

variable "warm_pod_memory" {
  description = "warm pod memory request"
  type = string
  default = "53248Mi"
}

variable "warm_pod_storage" {
  description = "warm pod storage request"
  type = string
  default = "5000Gi"
}

variable "warm_pod_ES_JAVA_OPTS" {
  description = "warm pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}

variable "cold_pod_count" {
  description = "number of cold pods"
  type = number
  default = 1
}
variable "cold_pod_cpu" {
  description = "cold pod cpu request"
  type = string
  default = "46000m"
}

variable "cold_pod_memory" {
  description = "cold pod memory request"
  type = string
  default = "11264Mi"
}

variable "cold_pod_storage" {
  description = "cold pod storage request"
  type = string
  default = "140Gi"
}

variable "cold_pod_ES_JAVA_OPTS" {
  description = "cold pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}

variable "frozen_pod_count" {
  description = "number of frozen pods"
  type = number
  default = 1
}
variable "frozen_pod_cpu" {
  description = "frozen pod cpu request"
  type = string
  default = "94000m"
}

variable "frozen_pod_memory" {
  description = "frozen pod memory request"
  type = string
  default = "11264Mi"
}

variable "frozen_pod_storage" {
  description = "frozen pod storage request"
  type = string
  default = "140Gi"
}

variable "frozen_pod_ES_JAVA_OPTS" {
  description = "frozen pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}

variable "ml_pod_count" {
  description = "number of ml pods"
  type = number
  default = 1
}
variable "ml_pod_cpu" {
  description = "ml pod cpu request"
  type = string
  default = "14000m"
}

variable "ml_pod_memory" {
  description = "ml pod memory request"
  type = string
  default = "11264Mi"
}

variable "ml_pod_storage" {
  description = "ml pod storage request"
  type = string
  default = "140Gi"
}

variable "ml_pod_ES_JAVA_OPTS" {
  description = "ml pod ES_JAVA_OPTS"
  type = string
  default = " "
  #default = "-Xms8g -Xmx8g"
}

variable "eck_namespace" {
  description = "eck namespace"
  type = string
  default = "default"
}


variable "master_pod_roles" {
  description = "master pod roles"
  type = string
  default = "master"
}

variable "hot_pod_roles" {
  description = "hot pod roles"
  type = string
  default = "data_hot, data_content, ingest"
}

variable "warm_pod_roles" {
  description = "warm pod roles"
  type = string
  default = "data_warm, data_content"
}

variable "cold_pod_roles" {
  description = "cold pod roles"
  type = string
  default = "data_cold"
}

variable "frozen_pod_roles" {
  description = "frozen pod roles"
  type = string
  default = "data_frozen"
}

variable "ml_pod_roles" {
  description = "ml pod roles"
  type = string
  default = "ml, remote_cluster_client"
}


variable "lbname" {
  description = "Kibana Load Balancer Name"
  type = string
  default = "changeme"
}

variable "lb2name" {
  description = "Kibana Load Balancer Name port 9200"
  type = string
  default = "changeme2"
}