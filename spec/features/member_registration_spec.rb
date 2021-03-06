require 'rails_helper'

feature "member registers for site" do
	scenario "user registers" do
		visit root_path
		click_link "Become a Member"
		fill_in_registration_fields
		expect(page).to have_content("Welcome! You have signed up successfully.")
	end

	def fill_in_registration_fields
		fill_in "member[first_name]", with: Faker::Name.first_name
		fill_in "member[last_name]", with: Faker::Name.last_name
		fill_in "member[email]", with: Faker::Internet.email
		fill_in "member[password]", with: Devise.friendly_token.first(8)
		click_button "Sign up"
	end
end