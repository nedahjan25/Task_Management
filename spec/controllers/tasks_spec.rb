# spec/features/tasks_spec.rb

require 'rails_helper'

RSpec.feature 'Tasks', type: :feature do
  scenario 'User views the tasks index page' do
    
    visit tasks_path

    expect(page).to have_content('Manage Tasks')

  end
end
