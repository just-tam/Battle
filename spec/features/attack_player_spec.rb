feature 'Attack player test' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Bart attacked Lisa'
  end

  scenario 'reduce Player 2 HP by 10' do
   sign_in_and_play
   click_button 'Attack'
   click_button 'OK'
   expect(page).not_to have_content 'Lisa: 60HP'
   expect(page).to have_content 'Lisa: 50HP'
 end

 scenario 'reduce Player 1 HP by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  click_button 'Attack'
  expect(page).not_to have_content 'Bart: 60HP'
  expect(page).to have_content 'Bart: 50HP'
end
end
