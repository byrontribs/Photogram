require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attatch_file('Image', 'spec/files/images/coffie.jpg')
    fill_in 'Caption', with: 'nom nom nom #coffietime'
    click_button 'Create Post'
    expect(page).to have_content('#coffietime')
    expect(page).to have_css("img[src*='coffie.jpeg']")
  end
end
