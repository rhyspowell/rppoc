rosa_openshift_version = "4.15.8"
aws_region             = "eu-west-1"
admin_username         = "rhys"
private_cluster        = false
cluster_name           = "rhys-poc"
create_vpc             = true
multi_az               = false
autoscaling_enabled    = true
min_replicas           = 2
max_replicas           = 6
additional_tags = {
  Terraform     = "true"
  cost-center   = "CC468"
  owner         = "rhpowell@redhat.com"
  service-phase = "lab"
  app-code      = "MOBB-001"
}
