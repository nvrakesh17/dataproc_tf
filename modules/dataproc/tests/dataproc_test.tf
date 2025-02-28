### **Test: Validate Dataproc Cluster Exists**
resource "terraform_test_assertion" "dataproc_cluster_exists" {
  component = module.dataproc
  equal     = module.dataproc.dataproc_cluster_name
  expected  = var.cluster_name
}

### **Test: Validate Service Account is Created**
resource "terraform_test_assertion" "service_account_exists" {
  component = module.dataproc
  not_null  = module.dataproc.dataproc_service_account
}