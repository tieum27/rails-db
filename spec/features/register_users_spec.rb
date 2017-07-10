require 'rails_helper'

RSpec.feature "RegisterUser", type: :feature do
  context "Landing page" do
    Steps "Going to Landing page" do
      Given "I visit localhost 3000:" do
        visit "/"
      end
      Then "I see Welcome!" do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
context "Register a user" do
  Steps "for registering a user" do
    Given "that I am on the registering page" do
      visit "/"
    end
     Then "I can enter my information" do
      fill_in 'full_name', with: 'Don Ready'
      fill_in 'address', with: '10 rainbow Rd'
      fill_in 'city', with: 'ToadLand'
      fill_in 'state', with: 'Bowser'
      fill_in 'zipcode', with: '12345'
      fill_in 'country', with: 'MarioLand'
      fill_in 'email', with: 'DonReady@hotmail.com'
      fill_in 'user_name', with: 'dready'
      fill_in 'password', with: 'Princess'
      click_button 'Register'
     end
    Then 'I am taken to a page that shows that I am registered.' do
      expect(page).to have_content 'Don Ready'
      expect(page).to have_content '10 rainbow Rd'
      expect(page).to have_content 'ToadLand'
      expect(page).to have_content 'Bowser'
      expect(page).to have_content '12345'
      expect(page).to have_content 'MarioLand'
      expect(page).to have_content 'DonReady@hotmail.com'
      expect(page).to have_content 'dready'
    end
  end
end
