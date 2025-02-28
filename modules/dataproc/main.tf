resource "google_dataproc_cluster" "dataproc" {
  name   = var.cluster_name
  region = var.region

  cluster_config {
    gce_cluster_config {
      service_account        = google_service_account.dataproc_sa.email
      service_account_scopes = ["cloud-platform"]

      # Ensure only one of these is used
      network    = var.subnetwork == "" ? var.network : null
      subnetwork = var.subnetwork != "" ? var.subnetwork : null
    }
    master_config {
      num_instances = 1
      machine_type  = var.master_machine_type
    }
    worker_config {
      num_instances = var.num_workers
      machine_type  = var.worker_machine_type
    }
  }
}
