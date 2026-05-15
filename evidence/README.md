# Terraform Evidence

This repository contains evidence generated from Terraform commands executed against the infrastructure stack.

The following commands were executed:

- `terraform state list`
- `terraform output`

The outputs were saved to:

- [`evidence/state-list.txt`](evidence/state-list.txt)
- [`evidence/outputs.txt`](evidence/outputs.txt)

## Evidence

```text
# evidence/state-list.txt

module.event_log.aws_dynamodb_table.this
module.photos.aws_s3_bucket.this
module.photos.aws_s3_bucket_lifecycle_configuration.this
module.photos.aws_s3_bucket_policy.this
module.photos.aws_s3_bucket_server_side_encryption_configuration.this
module.photos.aws_s3_bucket_versioning.this


# evidence/outputs.txt

module.event_log.aws_dynamodb_table.this: Creating...
module.photos.aws_s3_bucket.this: Creating...
module.photos.aws_s3_bucket.this: Creation complete after 4s [id=acme-photos-dev-unique]
module.photos.aws_s3_bucket_policy.this: Creating...
module.photos.aws_s3_bucket_versioning.this: Creating...
module.photos.aws_s3_bucket_server_side_encryption_configuration.this: Creating...
module.photos.aws_s3_bucket_lifecycle_configuration.this: Creating...
module.photos.aws_s3_bucket_policy.this: Creation complete after 1s [id=acme-photos-dev-unique]
module.photos.aws_s3_bucket_server_side_encryption_configuration.this: Creation complete after 1s [id=acme-photos-dev-unique]
module.photos.aws_s3_bucket_versioning.this: Creation complete after 2s [id=acme-photos-dev-unique]
module.event_log.aws_dynamodb_table.this: Still creating... [00m10s elapsed]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Still creating... [00m10s elapsed]
module.event_log.aws_dynamodb_table.this: Still creating... [00m20s elapsed]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Still creating... [00m20s elapsed]
module.event_log.aws_dynamodb_table.this: Creation complete after 26s [id=event-log-dev]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Still creating... [00m30s elapsed]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Still creating... [00m40s elapsed]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Still creating... [00m50s elapsed]
module.photos.aws_s3_bucket_lifecycle_configuration.this: Creation complete after 58s [id=acme-photos-dev-unique]
```