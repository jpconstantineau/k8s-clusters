export GITHUB_TOKEN=<your-github-token>


flux bootstrap github \
  --network-policy=false \
  --owner=jpconstantineau \
  --repository=k8s-clusters \
  --path=clusters/rpi4/base \
  --personal