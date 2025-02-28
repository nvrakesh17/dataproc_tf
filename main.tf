module "dataproc" {
  source              = "./modules/dataproc"
  project_id          = var.project_id
  region              = var.region
  cluster_name        = var.cluster_name
  network             = var.network
  subnetwork          = var.subnetwork
  master_machine_type = "n1-standard-4"
  worker_machine_type = "n1-standard-4"
  num_workers         = 2
}
