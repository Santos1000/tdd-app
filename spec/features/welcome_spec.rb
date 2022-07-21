require 'rails_helper'

RSpec.feature "Welcome", type: :feature do
  describe 'test-1' do
    scenario 'Show the massage Welcome friend' do
      visit(root_path)
      expect(page).to have_content('Welcome friend')
    end
    scenario 'Show a list of users' do
      visit(root_path)
      expect(find('ul li a')).to have_link('Clients')
    end
  end
end
