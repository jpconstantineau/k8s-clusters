export GITHUB_TOKEN=<your-github-token>
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

flux bootstrap github \
  --network-policy=false \
  --owner=jpconstantineau \
  --repository=k8s-clusters \
  --path=clusters/oci/base \
  --personal