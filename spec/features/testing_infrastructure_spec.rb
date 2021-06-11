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

feature 'Attacking players' do
  scenario 'Player 1 attacks Player 2 and receives confirmation' do
    sing_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Charlotte attacked Mittens'
  end

  scenario 'Player 1 attacks Player 2 and Player 2 HP points are reduced to 50' do
    sing_in_and_play
    click_link('Attack')
    expect(page).to have_content "'s HP: 50"
  end
end
