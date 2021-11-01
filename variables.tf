# Provider
variable "endpoint" {
  description = "Hostname da API do Kubernetes."
  type        = string
}

variable "cluster_ca_certificate" {
  description = "Certificados codificados por PEM para autenticação TLS com a API do Kubernetes."
  type        = string
}

variable "token" {
  description = "Token do `service account` para autenticação na API do Kubernetes."
  type        = string
}

variable "config_path" {
  description = "Caminho para um arquivo de configuração do Kubernetes."
  type        = string
  default     = null
}

# Kubeconfig
variable "create_kubeconfig" {
  description = "Se `true` o arquivo kubeconfig será criado."
  type        = bool
  default     = true
}

variable "kubeconfig_name" {
  description = "Nome do kubeconfig."
  type        = string
  default     = "cluster"
}

variable "kubeconfig_output_path" {
  description = "Caminho de criação do arquivo kubeconfig."
  type        = string
  default     = "./kube/kubeconfig"
}

variable "kubeconfig_file_permission" {
  description = "Permissão do arquivo kubeconfig que será criado."
  type        = string
  default     = "0600"
}

variable "kubeconfig_directory_permission" {
  description = "Permissão da pasta aonde kubeconfig que será criado."
  type        = string
  default     = "0755"
}
