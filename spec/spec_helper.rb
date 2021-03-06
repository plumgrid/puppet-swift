require 'puppetlabs_spec_helper/module_spec_helper'
require 'shared_examples'
require 'webmock/rspec'

RSpec.configure do |c|
  c.alias_it_should_behave_like_to :it_configures, 'configures'
  c.alias_it_should_behave_like_to :it_raises, 'raises'
  c.default_facts = { :concat_basedir => '/var/lib/puppet/concat' }
end

at_exit { RSpec::Puppet::Coverage.report! }
