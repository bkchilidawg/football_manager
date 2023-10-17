require 'rails_helper'

RSpec.describe 'the teams show page' do
  describe 'When I visit /child_table_name/:id' do
    it 'Then I see the child with that id including the childs attributes' do
      visit "teams/1"

      expect(page).to have_content("University of Oklahoma")
      expect(page).to have_content(17)
      expect(page).to have_content(true)
    end
  end
end
