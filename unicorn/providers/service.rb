# TODO: are these requires necessary?

require 'chef/mixin/command'
require 'chef/mixin/language'
include Chef::Mixin::Command

action :start do
  unless @unicorn.running
    @unicorn.config_path
    execute "unicorn start #{new_resource}"
  end
end

action :stop do
  if @bp.running
    execute "#{node['bluepill']['bin']} stop #{new_resource.name}"
  end
end

action :restart do
  if @bp.running
    execute "unicornctl restart #{new_resource.name}"
  end
end

def load_current_resource
  @unicorn = Chef::Resource::UnicornService.new(new_resource.name)
  @unicorn.config_path = new_resource.config_path || "/etc/unicorn/#{new_resource.name}"
  
  Chef::Log.debug("Checking status of unicorn service #{new_resource.name}")

  begin
    if run_command_with_systems_locale(:command => "killall -0 -r #{new_resource.name}") == 0
      @unicorn.running(true)
    end
  rescue Chef::Exceptions::Exec
    @unicorn.running(false)
    nil
  end

  # TODO: check whether the service is enabled
end
