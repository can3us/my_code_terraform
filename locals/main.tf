locals {
  creators = ["Gaiman", "Miller", "Siegel"]      // this is a list type, not a set
}

resource "null_resource" "creators" {
  for_each = toset (local.creators)
  triggers = {
    writer = each.value
      }
}
output "creators" {
  value = null_resource.creators
}
