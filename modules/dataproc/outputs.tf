output "dataproc_cluster_name" {
  value = google_dataproc_cluster.dataproc.name
}

output "dataproc_service_account" {
  value = google_service_account.dataproc_sa.email
}
