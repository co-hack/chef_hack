#
# Chef Solo Config File
#

cookbook_path File.join(File.dirname(__FILE__), '..', "cookbooks")

log_level          :info
log_location       STDOUT
file_cache_path    "/srv/chef/cookbooks"
ssl_verify_mode    :verify_none
Chef::Log::Formatter.show_time = false
