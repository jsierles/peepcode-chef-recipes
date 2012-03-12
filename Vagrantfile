Vagrant::Config.run do |config|
  config.vm.box = "lucid64-ree"
  config.vm.box_url = "http://packages.diluvia.net/lucid64-ree.box"
  config.vm.network :hostonly, "33.33.33.10"
  config.vm.share_folder "v-cookbooks", "/cookbooks", "."
end
