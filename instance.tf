resource "openstack_compute_instance_v2" "osc-smo-controlplane"{
   count = 1
   name      = "osc-smo-${count.index}"
   availability_zone = "nova"
   image_name  = openstack_images_image_v2.ubuntu-2004-server.name
   key_pair = "osc-keypair"
   flavor_name = openstack_compute_flavor_v2.smo_control.name
   security_groups = ["osc"]

   network {
     name = "provider"
   }
 }
