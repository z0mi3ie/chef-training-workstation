require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  describe package('tree') do
    it { should be_installed }
  end

  describe package('vim') do
    it { should be_installed }
  end
  
  describe package('git') do
    it { should be_installed }
  end

  describe file('/etc/motd') do
    it { should be_file } 
    it { should exist }
    it { should be_owned_by "root" }
    its(:content) { should match /Property of Chef/ }
  end


  
end
