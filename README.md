# ocean-regulator

Terraform (opentofu) and Ansible for building Ubuntu cloud compute virtual machines and clustering them with microk8s.
The opentofu creates the VMs, defaulting to Seattle and New Jersey in Vultr but can be changed. 

The SSH key can be pre-authorized in vultr, otherwise, authorize SSH keys (not included), then run the synth-reef.yml anisble to create a cluster.

Closely related is the "storm reef cluster" ansible and microk8s code here: https://github.com/jpegleg/storm-reef-clusters

The ocean-regulator has a smaller version of the storm-reef, which skips the rsyslog config and wazuh agent steps.
