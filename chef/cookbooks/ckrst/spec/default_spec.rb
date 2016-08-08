require 'chefspec'

at_exit { ChefSpec::Coverage.report! }

describe 'ckrst::default' do
    let (:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

    it 'creates ckrst group' do
        chef_run.converge(described_recipe)
        expect(chef_run).to create_group('ckrst')
    end

    it 'creates vinicius group' do
        chef_run.converge(described_recipe)
        expect(chef_run).to create_group('vinicius')
    end

    it 'creates vinicius user' do
        chef_run.converge(described_recipe)
        expect(chef_run).to create_user('vinicius')
    end

    it 'installs wget package' do
        chef_run.converge(described_recipe)
        expect(chef_run).to install_package('wget')
    end


end
