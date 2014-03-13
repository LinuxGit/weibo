require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the content 'Weibo App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Weibo')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Weibo App | Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Weibo App | Help')
    end
  end

  describe "About Page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Weibo App | About Us')
    end
  end

end
