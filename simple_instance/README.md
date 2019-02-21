# openstack_simple_vm

Module to create instances in OpenStack.

# Usage Example

```
module "instance" {
  source = "/path"
  vm-name = "jmier-test"
  key-pair = "jmier"
  instance-count = "3"
  image-name = "Ubuntu-14.04"
  flavor-name = "m1.medium"
  security-groups = ["default"]
  network-name = "test-network"
  floating-ip-pool = "external-network"
}
```
