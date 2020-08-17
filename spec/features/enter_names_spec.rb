feature 'Enter names test' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Bart vs. Lisa'
  end
end
