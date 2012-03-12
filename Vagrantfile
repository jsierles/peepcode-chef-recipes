Vagrant::Config.run do |config|
  config.vm.box = "lucid64-peepcode"
  config.vm.box_url = "http://diluvia.packages.net/lucid64-ree.box"
  config.vm.network :hostonly, "33.33.33.10"
  config.vm.share_folder "v-cookbooks", "/cookbooks", ".", :nfs => true
end
