define :unicorn_app do
  config_path = "#{node[:unicorn][:config_path]}/#{params[:name]}"

  template config_path do
    cookbook 'unicorn'
    source "unicorn.conf.erb"
  end
end