require 'spec_helper'
require 'capybara/rspec'

feature 'I should see the homepage', :js => true do # :js => true allows you to test javascript
  scenario "I should see the title and informational paragraph" do
    visit "/"
    expect(page).to have_selector('h1', text: "Automobiles Throughout History")
    expect(page).to have_content("Using data provided by www.fueleconomy.com I was able to collect all of the information from 1984 to present on manufacturers, car models, city mpg, highway mpg, average annual fuel costs, and much more. With the information collected I've decided to showcase the data comparisons using a few D3 graphs that nicely display the data.")
  end

  scenario "Images on the home page" do
    visit "/"
    expect(page).to have_xpath("//img[@src='/assets/showreel.jpg']")
    expect(page).to have_xpath("//img[@src='/assets/timeline.jpg']")
  end

  scenario "I should have links to graphs" do
    visit "/"
    expect(page).to have_link('a', :href => "/homes/showreel")
    expect(page).to have_link('a', :href => "/homes/timeline")
  end

end