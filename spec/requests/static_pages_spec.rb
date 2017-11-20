require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      get '/static_pages/home'
      expect(response.body).to include('Sample App')
    end

		it "should have the base title" do
      get '/static_pages/home'
      assert_select 'title', "Ruby on Rails Tutorial Sample App"
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      get '/static_pages/help'
      expect(response.body).to include('Help')
    end

    it "should have the title 'Help'" do
      get '/static_pages/help'
      assert_select 'title', "#{base_title} | Help"
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      get '/static_pages/about'
      expect(response.body).to include('About Us')
    end

    it "should have the title 'About Us'" do
      get '/static_pages/about'
      assert_select 'title', "#{base_title} | About Us"
    end
  end

  describe 'Contact page' do

    it "should have the content 'Contact'" do
      get '/static_pages/contact'
      expect(response.body).to include('Contact')
    end

    it "should have the title 'Contact'" do
      get '/static_pages/contact'
      assert_select 'title', "#{base_title} | Contact"
    end
  end
end
