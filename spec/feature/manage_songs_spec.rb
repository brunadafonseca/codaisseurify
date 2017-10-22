require 'rails_helper'

feature 'Manage songs', js: true do
  before(:each) do
    FactoryGirl.create :artist, id: 1, name: "Gloria Gaylor", genre: "Jazz"
  end

  def set_test
    visit artist_path(1)

    fill_in 'song-input', with: 'I will survive'

    page.execute_script("$('form').submit()")
  end

  scenario 'add a new song' do
    set_test

    expect(page).to have_content('I will survive')
  end

  scenario 'delete one song', js: true do
    set_test

    find('.delete-button').click

    expect(page).to have_content("This artist has no songs yet")
  end

  scenario 'delete all songs', js: true do
    set_test
    fill_in 'song-input', with: 'Another song'
    page.execute_script("$('form').submit()")

    find('#delete-all', :visible => false).click

    expect(page).to have_content("This artist has no songs yet")
  end
end
