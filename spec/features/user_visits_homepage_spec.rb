require "rails_helper"

feature "user visits the home page" do
    scenario "successfully" do
        visit root_path
#rspec's syntax
        expect(page).to have_css 'h1', text:'Todos'
    end
end