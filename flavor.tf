resource "openstack_compute_flavor_v2" "smo_control" {
  name = "n8-r32-d64"
  ram = "32768"
  vcpus = "8"
  disk = "64"
  is_public = "true"
  region = "RegionOne"
}
