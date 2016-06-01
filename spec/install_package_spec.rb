require "spec_helper"

describe "monit::install_package" do
  describe "debian platform family" do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set["monit"]["version"] = "1.2.3"
      end.converge("apt", described_recipe)
    end

    specify do
      expect(chef_run).to install_package("monit").with(version: "1.2.3")
    end
  end
end
