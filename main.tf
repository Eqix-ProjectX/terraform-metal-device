resource "equinix_metal_device" "metal" {
  hostname         = var.hostname
  plan             = var.plan
  metro            = var.metro
  operating_system = var.operating_system
  billing_cycle    = var.billing_cycle
  project_id       = var.project_id
}
