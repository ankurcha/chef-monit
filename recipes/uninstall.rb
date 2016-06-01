package "monit" do
  version node["monit"]["version"] if node["monit"]["version"]
  action :remove
end
