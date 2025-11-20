# Test resource to verify terraform plan in CI/CD
resource "aws_s3_bucket" "ci_test" {
  bucket = "cody-terraform-ci-test-20251120"

  tags = {
    Purpose     = "CI/CD Testing"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "ci_test" {
  bucket = aws_s3_bucket.ci_test.id

  versioning_configuration {
    status = "Enabled"
  }
}