require 'spec_helper'
describe 'compat' do
  context 'with default values for all parameters' do
    it { should contain_class('compat') }
  end
end
