feature 'Enter names' do
  scenario 'sign in and insert names of players' do
    sing_in_and_play
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end

feature 'Viewing Hit Points' do
  scenario 'Player 1 viewing player 2 Hitpoints' do
    sing_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end