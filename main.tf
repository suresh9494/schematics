data ibm_resource_group "resource_group" {
    name = "training-clusters"
}
resource ibm_container_cluster "tfcluster" {
name            = "remove-testing-via-tf-suresh"
datacenter      = "dal10"
machine_type    = "b3c.4x16"
hardware        = "shared"
public_vlan_id  = "2448185"
private_vlan_id = "2448187"

kube_version = "1.25.9"

default_pool_size = 3
    
public_service_endpoint  = "true"
private_service_endpoint = "true"

resource_group_id = data.ibm_resource_group.resource_group.id
}
