require 'rails_helper'

RSpec.describe 'Confrences Show', type: :feature do

  describe 'When I visit "/parents/:id"' do
    it 'Then I see the parent with that id including the parents attributes' do
      visit '/confrences/1'
      
      expect(page).to have_content("Big 12")
      expect(page).to have_content(14)
      expect(page).to have_content(true)

    end
  end

  describe 'When I visit /parents/:parent_id/child_table_name'do 
    it 'Then I see each Child that is associated with that Parent with each Childs attributes' do
      visit '/confrences/1/teams'  

      expect(page).to have_content("University of Oklahoma")
      expect(page).to have_content(17)
      expect(page).to have_content(true)
    end
  end

  describe 'When I visit a parents show page'do 
    it 'I see a count of the number of children associated with this parent' do
      visit '/confrences/1/'
    
      expect(page).to have_content("Number of Associated Teams: 1")
    end
  end

   describe 'When I visit the parent show page' do
    it 'displays a link to the child index page' do
      visit '/confrences/1'

      # save_and_open_page
      expect(page).to have_link('View Teams', href: '/confrences/1/teams')
    end
  end

  describe 'When I visit a parent show page' do
      it 'allows a visitor to create a new Parent' do
        visit '/confrences'
        click_link 'New Confrence'

      

        fill_in 'Name', with: 'Pac 12'
        fill_in 'Number of teams', with: 14
        check 'Power 5?'

        click_button 'Create Confrence'

        expect(page).to have_content('Pac 12')
        expect(page).to have_content('Number of Teams: 14')
        expect(page).to have_content('Is a Power 5?: false')
      end
    end

    it 'allows a visitor to update a Parent' do
      @confrence = Confrence.find_by(name: 'Big 12')  

      visit edit_confrence_path(1) 
      click_button 'Update Confrence'

      expect(current_path).to eq(confrence_path(1))  
      expect(page).to have_content('Big 12')  
      expect(page).to have_content(14) 
      expect(page).to have_content('true')  
    end


    it 'updates the Parent record' do
      @confrence = Confrence.find_by(name: 'Big 12')  
      visit edit_confrence_path(@confrence)

      fill_in 'Name', with: 'Updated Confrence Name'
      fill_in 'Number of teams', with: 15
      check 'Power 5?'

      click_button 'Update Confrence'
      @confrence.reload

      expect(page).to have_content('Updated Confrence Name')
      expect(page).to have_content(15)
      expect(page).to have_content(true)
    end

end
