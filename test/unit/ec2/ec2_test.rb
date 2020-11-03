# frozen_string_literal: true

require 'awspec'
require 'aws-sdk'
require 'rhcl'

# Parse and load our terraform manifest into config_main
config_main = Rhcl.parse(File.open('main.tf'))
ec2_name = config_main['module']['ec2']['instance_name']
sg_id = config_main['module']['ec2']['security_group']

# Load the terraform state file and convert it into a Ruby hash
state_file = './terraform.tfstate'
tf_state = JSON.parse(File.open(state_file).read)
subnet_id = tf_state['resources'][1]['instances'][0]['attributes']['subnet_id']
vol_id = tf_state['resources'][1]['instances'][0]['attributes']['root_block_device'][0]['volume_id']
enc_id = tf_state['resources'][1]['instances'][0]['attributes']['root_block_device'][0]['encryption']

# Test to ensure the EC2 instance exists
describe ec2(ec2_name.to_s) do
  it { should exist }
end

# Test to ensure the EC2 instance is in a 'running' state
describe ec2(ec2_name.to_s) do
  it { should be_running }
end

# Test to ensure the EC2 instance has the correct subnet assigned
describe ec2(ec2_name.to_s) do
  it { should belong_to_subnet(subnet_id.to_s) }
end

# Test to ensure the EC2 instance has the correct Name tag assigned
describe ec2(ec2_name.to_s) do
  it { should have_tag('Name').value('DevInstanceAWS-1') }
end

# Test to ensure the EC2 instance has the correct Security Groups assigned
describe ec2(ec2_name.to_s) do
  it { should have_security_group(sg_id.to_s) }
end

# Test to ensure the EC2 instance EBS volume is encrypted
describe ebs(vol_id.to_s) do
  its(:encrypted) { should eq true }
end
