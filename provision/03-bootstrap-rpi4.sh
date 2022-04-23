export GITHUB_TOKEN=<your-github-token>
export KUBECONFIG=../talos/kubeconfig

flux bootstrap github \
  --network-policy=false \
  --owner=jpconstantineau \
  --repository=k8s-clusters \
  --path=clusters/talos-rpi4/base \
  --personal