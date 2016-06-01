source "https://rubygems.org"

chef_version = ENV.fetch("CHEF_VERSION", "11.18.6")

gem "chef", "~> #{chef_version}"
gem "chefspec"

gem "berkshelf"
gem "foodcritic"
gem "rake"
gem "rubocop"
gem "serverspec"

group :integration do
  gem "busser-serverspec"
  gem "kitchen-docker"
  gem "kitchen-sync"
  gem "test-kitchen"
end
