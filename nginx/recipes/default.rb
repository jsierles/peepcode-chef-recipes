package "nginx"

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

template "/etc/nginx/nginx.conf" do
  notifies :reload, "service[nginx]"
end
