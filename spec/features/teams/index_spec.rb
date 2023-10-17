require 'rails_helper'

RSpec.describe 'Teams Index', type: :feature do
 
  describe 'When I visit "/child_table_name"' do
    it 'Then I see each Child in the system including the Childs attributes' do
      visit teams_path


      expect(page).to have_content('University of Oklahoma')
      expect(page).to have_content('Confrence Championships: 17')
      expect(page).to have_content('Has a National Championship? true')

      expect(page).to have_content('University of Alabama')
      expect(page).to have_content('Confrence Championships: 29')
      expect(page).to have_content('Has a National Championship? true')
    end

    it 'Then I see a link at the top of the page that takes me to the Child Index' do
      visit teams_path  
      

      expect(page).to have_link('Teams Index', href: teams_path)
    end
  end
end
