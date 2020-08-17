feature 'Hit points test' do
  scenario 'see player 2 of hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Bart'
    fill_in :player_2_name, with: 'Lisa'
    click_button 'Submit'
    expect(page).to have_content 'Lisa: 60HP'
  end
end
