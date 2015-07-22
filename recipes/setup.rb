package 'vim' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  #content "Property of Chef. Welcome #{ENV['USR']}!" 
  content "Property of Chef. Welcome!" 
  action :create
end



