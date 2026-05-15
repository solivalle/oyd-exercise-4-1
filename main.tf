module "photos" {
  source = "./modules/log-archive"

  bucket_name            = "acme-photos-${var.environment}-unique"
  environment            = var.environment
  lifecycle_ia_days      = 30
  lifecycle_glacier_days = 90
  lifecycle_expire_days  = 365
}

module "event_log" {
  source = "./modules/dynamodb-table"

  table_name    = "event-log-${var.environment}"
  environment   = var.environment
  billing_mode  = "PAY_PER_REQUEST"
  ttl_attribute = "expires_at"

  tags = {
    Service = "event-collector"
  }
}