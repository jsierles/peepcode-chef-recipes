actions :start, :stop, :enable, :disable, :restart

attribute :enabled, :default => false
attribute :running, :default => false
attribute :variables, :kind_of => Hash
attribute :supports, :default => { :restart => true, :status => true }