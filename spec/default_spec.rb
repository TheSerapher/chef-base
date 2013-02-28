require 'chefspec'

describe 'The recipe base::default' do
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'base::default' }

  %w( up2date chef-client chef-client::config users-wrapper ntp sudo openssh ).each do |rcp|
    it "should include recipe #{rcp}" do
      chef_run.should include_recipe rcp
    end
  end
end
