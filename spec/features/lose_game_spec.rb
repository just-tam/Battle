feature 'Lose game test' do
  scenario 'displays "lose" message' do
   sign_in_and_play
   11.times{attack_and_confirm}
   expect(page).to have_content 'Lisa loses the battle!'
 end
end
