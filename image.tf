resource "openstack_images_image_v2" "ubuntu-2004-server" {
  name 			= "ubuntu-2004-server"
  container_format 	= "bare"
  image_source_url 	= "https://cloud-images.ubuntu.com/focal/20221107/focal-server-cloudimg-amd64.img"
  disk_format 		= "qcow2"
}
