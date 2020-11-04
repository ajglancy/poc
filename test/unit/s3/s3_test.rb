# frozen_string_literal: true

require 'awspec'
require 'aws-sdk'
require 'rhcl'

# Test to ensure the S3 bucket has versioning enabled 
describe s3_bucket('538215634837-testbucket-poc') do
    it { should have_versioning_enabled }
  end
  
# Test to ensure the S3 bucket has server side encryption enabled
  describe s3_bucket('538215634837-testbucket-poc') do
    it { should have_server_side_encryption(algorithm: "aws:kms") }
  end

# Test to ensure the S3 bucket has the correct bucket owner 
  describe s3_bucket('538215634837-testbucket-poc') do
    its('resource.acl.owner.display_name') { should eq 'my-bucket-owner' }
  end

# Test to ensure MFA delete is enabled on the bucket  
  describe s3_bucket('538215634837-testbucket-poc') do
    it { should have_mfa_delete_enabled }
  end

# Test to ensure the S3 bucket has logging enabled
  describe s3_bucket('538215634837-testbucket-poc') do
    it { should have_logging_enabled(target_bucket: 'my-log-bucket', target_prefix: 'logs/') }
  end

# Test to ensure the S3 file has been successfully uploaded and is encrypted
  describe s3_bucket('538215634837-testbucket-poc') do
    it { should have_object('/test.txt') }
    it { should have_server_side_encryption(algorithm: "aws:kms") }
  end

