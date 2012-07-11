require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "Help" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "About" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
  end

  it "should have the right title" do
    visit '/static_pages/home' do
      page.should have_selector('title', :text => "My Title")
    end
  end

  it "should not have a custom page title" do
    visit '/static_pages/home' do
      page.should_not have_selector('title', :text => '| Home')
    end
  end
end
