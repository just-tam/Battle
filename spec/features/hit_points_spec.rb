feature 'Hit points test' do
  scenario 'see player 2 of hit points' do
    sign_in_and_play
    expect(page).to have_content 'Lisa: 60HP'
  end
end
