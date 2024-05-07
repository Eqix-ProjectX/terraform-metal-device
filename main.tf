resource "random_pet" "this" {
  length = 2
}

resource "equinix_metal_device" "metal" {
  hostname         = "${random_pet.this.id}-${var.region}"
  plan             = var.plan
  metro            = var.metro
  operating_system = var.operating_system
  billing_cycle    = var.billing_cycle
  project_id       = var.project_id
}
