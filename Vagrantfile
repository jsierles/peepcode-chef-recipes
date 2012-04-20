Vagrant::Config.run do |config|
  config.vm.define :web do |w|
    w.vm.box = "squeeze64-ruby193"
    w.vm.host_name = "web"
    w.vm.box_url = "http://packages.diluvia.net/squeeze64-ruby193.box"
    w.vm.network :hostonly, "33.33.33.10"
    w.vm.share_folder "v-cookbooks", "/cookbooks", "."
  end

  config.vm.define :noc do |n|
  n.vm.box = "squeeze64-ruby193"
  n.vm.host_name = "noc"
  n.vm.box_url = "http://packages.diluvia.net/squeeze64-ruby193.box"
  n.vm.network :hostonly, "33.33.33.11"
  end
end
