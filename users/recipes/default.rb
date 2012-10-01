require_recipe 'ruby-shadow'

node[:users].each do |name, conf|
  
  home_dir = "/home/#{name}"
  
  user name do
    password conf[:password]
    action [:create]
  end
  
  directory home_dir do
    owner name
    mode 0700
  end
  
  directory "#{home_dir}/.ssh" do
    owner name
    mode 0700
  end

  template "#{home_dir}/.ssh/authorized_keys" do
    owner name
    variables keys: conf[:ssh_keys]
    mode 0600
  end
end