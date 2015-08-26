#
# Cookbook Name:: monit
# Recipe:: _service_configuration
#

config_dir = File.dirname(node["monit"]["main_config_path"])
monit_dirs = [
  config_dir,
  node["monit"]["includes_dir"],
  "/var/lib/monit"
]

monit_dirs.each do |dir|
  directory dir do
    recursive true
  end
end

template "/etc/init/monit.conf" do
  source "monit.upstart.erb"
  mode "0755"
  variables(
    prefix: node["monit"]["binary"]["prefix"],
    config: node["monit"]["main_config_path"]
  )
end

# system service
service "monit" do
  supports restart: true, reload: true
  action [:enable, :start]
end
