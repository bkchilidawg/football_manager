require 'rails_helper'

RSpec.describe 'Confrence Index', type: :feature do
    

  describe 'When I visit "/parents"'do 
    it 'I see the name of each parent record in the system' do
      visit '/confrences'


      expect(page).to have_content ('Big 12')  
      expect(page).to have_content ('SEC') 
    end
  end

  describe 'When I visit "/confrences"' do 
    it 'I see the name of each parent record in the system' do
      visit '/confrences'

      expect(page).to have_content('Big 12')  
      expect(page).to have_content('SEC') 
    end

    it 'I see that records are ordered by most recently created first. And next to each of the records I see when it was created' do
      visit '/confrences'
      
      # save_and_open_page
      expect(page).to have_content('Created at:')
    end

    it 'Then I see a link at the top of the page that takes me to the Parent Index' do
      visit teams_path  
      

      expect(page).to have_link('Confrences Index', href: confrences_path)
    end
  end
end



