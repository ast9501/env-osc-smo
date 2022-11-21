resource "openstack_networking_secgroup_v2" "secgroup_osc" {
  name        = "osc"
  description = "Security group for (winlab infra) nfs instance"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_icmp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_odlweb" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 30205
  port_range_max    = 30205
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_jenkins" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 32080
  port_range_max    = 32080
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_kubernetes_api" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_osc_kubernetes_kubelet" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10250
  port_range_max    = 10250
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_osc.id}"
}
