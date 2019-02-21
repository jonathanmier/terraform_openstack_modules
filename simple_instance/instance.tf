# Pulls floating IPs
resource "openstack_networking_floatingip_v2" "fip_1" {
  count = "${var.instance-count}"
  pool = "${var.floating-ip-pool}"
}

# Creates instances
resource "openstack_compute_instance_v2" "instance" {
  count = "${var.instance-count}"
  name = "${var.vm-name}-${count.index +1}"
  image_name = "${var.image-name}"
  flavor_name = "${var.flavor-name}"
  key_pair = "${var.key-pair}"
  security_groups = "${var.security-groups}"

  network {
    name = "${var.network-name}"
  }
}

# Attaches floatings IP to instances
resource "openstack_compute_floatingip_associate_v2" "fip_1" {
  count = "${var.instance-count}"
  floating_ip = "${element(openstack_networking_floatingip_v2.fip_1.*.address, count.index)}"
  instance_id = "${element(openstack_compute_instance_v2.instance.*.id, count.index)}"
}
