require 'rails_helper'

RSpec.describe "User registration form" do
  it "creates new user" do
    visit root_path

    click_button "Register as a User"
    save_and_open_page
    expect(current_path).to eq(new_user_path)

    username = "funbucket13"
    password = "test"

    fill_in :user_username, with: username
    fill_in :user_password, with: password

    click_on "Create User"

    expect(page).to have_content("Welcome, #{username}!")
  end
end
