# openstack_simple_vm

Module to create instances in OpenStack.

# Usage Example

```
module "instance" {
  source = "github.com/jonathanmier/terraform_openstack_modules/tree/master/simple_instance"
  vm-name = "jmier"
  key-pair = "jmier"
  instance-count = "3"
  image-name = "Ubuntu-14.04"
  flavor-name = "m1.medium"
  security-groups = ["default"]
  network-name = "test-network"
  floating-ip-pool = "external-network"
}
```
Name of instances will appear as jmier-1, jmier-2 and jmier-3 in this example.
