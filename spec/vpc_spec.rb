require 'spec_helper'

state_file = File.read('resources.output')
resource_ids = JSON.parse(state_file)

vpc_id = resource_ids['modules'][0]['outputs']['vpc_id']['value']


describe vpc('sunil_test_vpc') do
  it { should exist }
  it { should be_available }
  its(:vpc_id) { should eq vpc_id }
  its(:cidr_block) { should eq '10.0.0.0/16' }
  it { should have_route_table('rtb-64c8301f') }
  it { should have_route_table('rtb-2be41c50') }
  it { should have_route_table('rtb-d9d820a2') }
  it { should have_network_acl('acl-95e498ed') }
end
