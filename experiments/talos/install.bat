talosctl apply-config --insecure --nodes 192.168.50.51 --file controlplane-51.yaml
talosctl apply-config --insecure --nodes 192.168.50.52 --file controlplane-52.yaml
talosctl apply-config --insecure --nodes 192.168.50.53 --file controlplane-53.yaml
talosctl apply-config --insecure --nodes 192.168.50.54 --file worker-54.yaml
talosctl apply-config --insecure --nodes 192.168.50.55 --file worker-55.yaml
talosctl apply-config --insecure --nodes 192.168.50.56 --file worker-56.yaml
talosctl apply-config --insecure --nodes 192.168.50.57 --file worker-57.yaml

echo talosctl --talosconfig=./talosconfig config node 192.168.50.51