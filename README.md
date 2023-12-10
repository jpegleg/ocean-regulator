# ocean-regulator

Terraform (opentofu) and Ansible for building Ubuntu cloud compute virtual machines and clustering them with microk8s.
The opentofu creates the VMs, defaulting to Seattle and New Jersey in Vultr but can be changed in the main.tf file.

The SSH key is set in the main.tf. Edit the file and replace the public key with the desired public key before use.

Also before use, create a `terraform.tfvars` file containing your vultr API key.

Once the hosts are online, then the ansible can be run against it to configure them and form the cluster.

The ansible is designed to operate on one cluster at a time. Set the ansible `hosts.ini` to utilize the following groups:

```
[reef]
firstip
secondip
[control-node]
firstip
[added-control-plane]
secondip

```

This will form a two node cluster with each node acting as a control plane node.

If we want to make the cluster larger, we can add more control plane or worker nodes.

Important notes:
- the anisble play for joining the second node may report a failure even when successful
- the calico manifest may need to be additionally re-applied from the control-node: `./calicoctl apply -f storm-network.yml`

To know if the calico manifest needs to be re-applied, check the wireguard keys:

```
./calicoctl get node -o yaml --allow-version-mismatch | grep Public
```

If there are no results, they try re-appying the storm-network.yml and waiting a minute.

The ansible does not do a full system upgrade. Additional steps may be desired to include apt update and upgrade.

Closely related is the "storm reef cluster" ansible and microk8s code here: https://github.com/jpegleg/storm-reef-clusters

The ocean-regulator ansible has a lot in common with the anisble in storm-reef. Some differences include skipping the rsyslog config and wazuh agent steps,
adding wireguard, htop, and tmux packages, setting motd and hostname, and additional reboots.

