#crossplane
curl -sL "https://raw.githubusercontent.com/crossplane/crossplane/main/install.sh" | sh
#download velad
curl -fsSl https://static.kubevela.net/script/install-velad.sh | bash
curl -sfL https://get.k3s.io | sh -
velad install --bind-ip 192.168.1.205

export KUBECONFIG=$(velad kubeconfig --host)

vela comp

vela addon enable ~/.vela/addons/velaux serviceType=LoadBalancer
vela addon enable ~/.vela/addons/fluxcd

