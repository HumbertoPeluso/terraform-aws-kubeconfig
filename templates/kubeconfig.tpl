apiVersion: v1
kind: Config
clusters:
- cluster:
    server: ${endpoint}
    certificate-authority-data: ${cluster_ca_base64}
  name: ${name}
contexts:
- context:
    cluster: ${name}
    user: ${name}
  name: ${name}
current-context: ${name}
preferences: {}
users:
- name: ${name}
  user:
    token: ${token}
