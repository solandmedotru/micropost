require 'spec_helper'

describe "StaticPages" do
  describe "Home pages" do
    it "should have the content 'Micropost'" do
     visit '/static_pages/home'
      expect(page).to have_content('Micropost')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Micropost | Home")
    end
  end

  describe "Help pages" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Micropost | Help")
    end
  end

  describe "About pages" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Micropost | About")
    end
  end
end
