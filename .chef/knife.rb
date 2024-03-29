# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vseshanka"
client_key               "#{current_dir}/vseshanka.pem"
validation_client_name   "personal_home-validator"
validation_key           "#{current_dir}/personal_home-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/personal_home"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
