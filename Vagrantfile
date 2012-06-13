Vagrant::Config.run do |config|
  config.vm.box = "squeeze64-ruby193"
  config.vm.box_url = "http://packages.diluvia.net/squeeze64-ruby193.box"
  config.vm.network :hostonly, "33.33.33.10"
  config.vm.share_folder "v-cookbooks", "/cookbooks", "."
end
