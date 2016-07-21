require 'spec_helper'

feature "Lose a game" do
  scenario "Hitting 0 HP" do
    sign_in_and_play
    10.times {attack_and_confirm}
    click_link "Attack"
    expect(page).to have_content 'Mittens is a LOSER!!!'
  end
end
