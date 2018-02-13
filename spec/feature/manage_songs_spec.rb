require 'rails_helper'

feature 'Manage songs', js: true do
  before do
    FactoryGirl.create :artist, id: 1, name: "Gloria Gaylor", genre: "Jazz"

    visit artist_path(1)

    fill_in 'song-input', with: 'I will survive'

    page.execute_script("$('form').submit()")
  end

  scenario 'add a new song' do
    expect(page).to have_content('I will survive')
  end

  scenario 'delete one song' do
    find('.delete-button').click

    expect(page).to have_content("This artist has no songs yet")
  end

  scenario 'delete all songs' do
    fill_in 'song-input', with: 'Another song'

    page.execute_script("$('form').submit()")

    find('#delete-all', :visible => false).click

    expect(page).to have_content("This artist has no songs yet")
  end
end
