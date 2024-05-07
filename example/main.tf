module "instance" {
  source           = "../"
  count            = 3
  project_id       = var.project_id
  plan             = var.plan
  metro            = var.metro
  operating_system = var.operating_system
  region           = var.region
}
