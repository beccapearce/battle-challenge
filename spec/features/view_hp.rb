require 'spec_helper'

feature 'health points' do
  scenario 'view HP' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens:fe 100HP'
  end
end
