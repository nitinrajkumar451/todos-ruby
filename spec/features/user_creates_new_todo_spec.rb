require "rails_helper"

feature "user creates a new todo spec" do
    scenario "fills in todo and adds it" do
        sign_in
        click_on "Add a new todo"
        fill_in "Title", with: "Remember card"
        click_on "Submit"
        expect(page).to have_css '.todos li', text: "Remember card"
    end
end