log_level          :info
log_location       STDOUT
ssl_verify_mode    :verify_none
chef_server_url    "https://api.opscode.com/organizations/kayak1"
validation_client_name "kayak1-validator"
Mixlib::Log::Formatter.show_time = true
