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
  content "Property of Chef. Welcome! 
  
  IPADDRESS: #{node["ipaddress"]}
  HOSTNAME : #{node["hostname"]}
  MEMORY   : #{node["memory"]["total"]}
  CPU      : #{node["cpu"]["0"]["mhz"]}

  " 
  action :create
end



