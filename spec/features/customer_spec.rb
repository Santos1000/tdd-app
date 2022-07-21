require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  scenario "link client list work?" do
    visit(root_path)
    expect(page).to have_link('Client')
  end

  scenario "link new client work?" do
    visit(root_path)
    expect(page).to have_content('Client list')
    click_on('Clients')
    expect(page).to have_link('Add Client')
  end

  scenario "link new client work?" do
    visit(customers_path)
    click_on('Add Client')
    expect(page).to have_content('New client')
  end
end
