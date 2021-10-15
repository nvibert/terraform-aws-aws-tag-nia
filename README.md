# Consul Terraform Sync for AWS Tags

This module creates AWS tags automatically based on values from Consul Key Value store.

## Prerequisites

- [Consul Terraform Sync](https://github.com/hashicorp/consul-terraform-sync) v0.4.0

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=3.55 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.55.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_tag.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| input_consul_kv | K/V pairs monitored by CTS| map(string) | n/a | yes |
| input_services  | Consul services monitored by Consul-Terraform-Sync | <pre>map(<br>    object({<br>      id        = string<br>      name      = string<br>      kind      = string<br>      address   = string<br>      port      = number<br>      meta      = map(string)<br>      tags      = list(string)<br>      namespace = string<br>      status    = string<br><br>      node                  = string<br>      node_id               = string<br>      node_address          = string<br>      node_datacenter       = string<br>      node_tagged_addresses = map(string)<br>      node_meta             = map(string)<br><br>      cts_user_defined_meta = map(string)<br>    })<br>  )</pre> | n/a | yes |
