feature 'Enter names test' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bart'
    fill_in :player_2_name, with: 'Lisa'
    click_button 'Submit'
    expect(page).to have_content 'Bart vs. Lisa'
  end
end
