provider "kubernetes" {
  host                   = var.endpoint
  cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
  token                  = var.token
  config_path            = var.config_path
}
