# Kubernetes - Kubeconfig | Terrafom Module

Módulo do Terraform para criação de kubeconfigs para acesso à cluster Kubernetes.

## :rocket: Como usar

Para utilizar o módulo é necessário gerar um [access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html) do GitLab e configurá-lo na máquina local ou pipeline para que o Terraform utilize. A seguinte configuração precisa ser criada em `~/.terraformrc`:

```hcl
credentials "gitlab.com" {
  token = "<GITLAB_ACCESS_TOKEN>"
}
```

### Exemplo

O exemplo abaixo demonstra o mínimo de configuração necessária para utilização do módulo.

```hcl
module "kubeconfig" {
  source  = "gitlab.com/vertigobr/terraform-kubernetes-kubeconfig/kubernetes"
  version = "1.0.0"

  endpoint               = "<ENDPOINT>"
  cluster_ca_certificate = "<CLUSTER CERTIFICATE AUTHORITY>"
  token                  = "<TOKEN>"
  create_kubeconfig      = true
  kubeconfig_name        = "example-cluster"
}
```

### Providers
 
| Nome | Versão |
|------|--------|
| [kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/2.3.0) | ~> 2.3.0 |
| [local](https://registry.terraform.io/providers/hashicorp/local/2.1.0) | ~> 2.1.0 |

### Modules

Sem utilização de módulos.

### Resources

| Nome | Tipo |
|------|------|
| [local_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |

### Inputs

| Nome | Descrição | Tipo | Valor padrão | Obrigatório |
|------|-----------|------|--------------|-------------|
| endpoint | Hostname da API do Kubernetes. | `string` | n/a | **Sim** |
| cluster_ca_certificate | Certificados codificados por PEM para autenticação TLS com a API do Kubernetes. | `string` | n/a | **Sim** |
| token | Token do `service account` para autenticação na API do Kubernetes. | `string` | n/a | **Sim** |
| config_path | Caminho para um arquivo de configuração do Kubernetes. | `string` | `null` | Não |
| create_kubeconfig | Se `true` o arquivo kubeconfig será criado. | `bool` | `true` | Não |
| kubeconfig_name | Nome do kubeconfig. | `string` | `"cluster"` | Não |
| kubeconfig_output_path | Caminho de criação do arquivo kubeconfig. | `string` | `"./kube/kubeconfig"` | Não |
| kubeconfig_file_permission | Permissão do arquivo kubeconfig que será criado. | `string` | `"0600"` | Não |
| kubeconfig_directory_permission | Permissão da pasta aonde kubeconfig que será criado. | `"0755"` | `cluster` | Não |

### Outputs

Sem outputs.

## :memo: Licença

[MIT](LICENSE)
