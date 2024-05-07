resource "random_pet" "this" {
  length = 2
}

module "instance" {
  source           = "../"
  count            = 3
  hostname         = "${random_pet.this.id}-${var.region}-${count.index}"
  project_id       = var.project_id
  plan             = var.plan
  metro            = var.metro
  operating_system = var.operating_system
  region           = var.region
}
