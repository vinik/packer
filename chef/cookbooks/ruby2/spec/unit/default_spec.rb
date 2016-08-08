require 'chefspec'
require 'chefspec/berkshelf'

at_exit { ChefSpec::Coverage.report! }

describe 'ruby2::default' do
    let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

    it 'add ruby repo' do
        chef_run.converge(described_recipe)
        expect(chef_run).to add_apt_repository('ruby-ng')
    end

    it 'installs ruby2 package' do
        chef_run.converge(described_recipe)
        expect(chef_run).to install_package('ruby2.2')
    end


end
