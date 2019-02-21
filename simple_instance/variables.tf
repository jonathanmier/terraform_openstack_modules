# Required parameters per instance
variable "vm-name" { type = "string" }             # required vm-name
variable "key-pair" { type = "string" }            # required ssh key pair name
variable "instance-count" { type = "string" }      # number of instances
variable "image-name" { type = "string" }          # name of the image to use for instances
variable "flavor-name" { type = "string" }         # name of the flavor to use, e.g. m1.small
variable "security-groups" { type = "string" }     # names of the security groups to use
variable "network-name" { type = "string" }        # name of the private network to attach to
variable "floating-ip-pool" { type = "string" }    # name of the floating IP pool for public IP
