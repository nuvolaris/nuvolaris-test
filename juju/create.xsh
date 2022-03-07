#https://ubuntu.com/kubernetes/docs/quickstart
sudo -E juju bootstrap aws --constraints arch=amd64
sudo -E juju list-controllers
sudo -E juju add-model aws
sudo -E juju deploy charmed-kubernetes