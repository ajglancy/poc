# frozen_string_literal: true

require 'awspec'
require 'aws-sdk'
require 'rhcl'

# Test to ensure Security Group exists
describe security_group('web_external') do
  it { should exist }
end

# Test to ensure the Security Group does not have incoming public access granted for any TCP or UDP ports on 0.0.0.0/0
describe security_group('web_external') do
      its(:inbound) { should_not be_opened('0-65535').protocol('tcp').for('0.0.0.0/0') }
      its(:inbound) { should_not be_opened('0-65535').protocol('udp').for('0.0.0.0/0') }
    end
  
# Test to ensure the Security Group does not have outgoing public access granted for any TCP or UDP ports on 0.0.0.0/0
describe security_group('web_external') do
  its(:outbound) { should_not be_opened('0-65535').protocol('tcp').for('0.0.0.0/0') }
  its(:outbound) { should_not be_opened('0-65535').protocol('udp').for('0.0.0.0/0') }
end