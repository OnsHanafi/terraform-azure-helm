resource "helm_release" "cert_manager" {
  name = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart = "cert-manager"
  create_namespace = true
  version = "v1.13.1"

# to override some vars
  set {
    name = "installCRDs"
    value = "true"
  }
  
}