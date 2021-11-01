resource "local_file" "kubeconfig" {
  count = var.create_kubeconfig ? 1 : 0

  content = templatefile("${path.module}/templates/kubeconfig.tpl", {
    name              = var.kubeconfig_name
    endpoint          = var.endpoint
    cluster_ca_base64 = var.cluster_ca_certificate
    token             = var.token
  })

  filename             = "${var.kubeconfig_output_path}_${var.kubeconfig_name}"
  file_permission      = var.kubeconfig_file_permission
  directory_permission = var.kubeconfig_directory_permission
}
