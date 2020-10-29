resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

#Create s3 bucket, with versioning enabled.
resource "aws_s3_bucket" "test_bucket" {
  bucket = "538215634837-testbucket"
  acl    = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  versioning {
    enabled = true
  }

}

#Create s3 bucket policy using IAM policy document, attach to bucket.
//resource "aws_s3_bucket_policy" "bucket_access_policy" {
 // bucket = "${aws_s3_bucket.test_bucket.id}"
////  policy = "${data.aws_iam_policy_document.s3_bucket_policy.json}"
//}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "${aws_s3_bucket.test_bucket.id}"
  key    = "test.txt"
  source = "test.txt"
}

data "aws_caller_identity" "current" {}

locals {
  aws_account_id = "${data.aws_caller_identity.current.account_id}"
}