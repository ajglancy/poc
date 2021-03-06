# frozen_string_literal: true

require 'awspec'
require 'aws-sdk'
require 'rhcl'

# Parse and load our terraform manifest into config_main
config_main = Rhcl.parse(File.open('main.tf'))
vpc_id = config_main['module']['vpc']['vpc_id']

# Test to ensure the VPC exists
describe vpc('dev-vpc') do
  it { should exist }
end

# Test to ensure enableDnsHostnames is enabled and enableDnsSupport is not enabled
describe vpc('dev-vpc') do
  it { should have_vpc_attribute('enableDnsHostnames') }
  it { should_not have_vpc_attribute('enableDnsSupport') }
end

# Test to ensure the VPC has routes enabled for correct subnets
describe vpc('dev-vpc') do
  it { should have_route_table('dev-private-rt') }
  it { should have_route_table('dev-public-rt') }
end

# Test to ensure the NAT Gateway exists
describe nat_gateway('dev-ngw') do
  it { should exist }
end

# Test to ensure the NAT Gateway is connected to correct VPC
describe nat_gateway('dev-ngw') do
  it { should belong_to_vpc('dev-vpc') }
end

# Test to ensure the IGW Gateway exists
describe internet_gateway('dev-igw') do
  it { should exist }
end

# Test to ensure the IGW Gateway is connected to correct VPC
describe internet_gateway('dev-igw') do
  it { should be_attached_to('dev-vpc') }
end
