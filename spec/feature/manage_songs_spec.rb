require 'rails_helper'

feature 'Manage songs', js: true do
  scenario 'add a new song' do
    visit artist_path(1)

    fill_in 'song-input', with: 'I Will Survive'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('I Will Survive')
  end
end
