module "photos" {
  source = "./modules/log-archive"

  bucket_name            = "acme-photos-${var.environment}"
  environment            = var.environment
  lifecycle_ia_days      = 30
  lifecycle_glacier_days = 90
  lifecycle_expire_days  = 365
}