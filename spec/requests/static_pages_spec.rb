require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { response.body }

  shared_examples_for 'all static pages' do
    it { assert_select 'h1', heading }
    it { assert_select 'title', full_title(page_title) }
  end

  describe "Home page" do
    before { get root_path }
    let(:heading) { /Sample App/ }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
  end

  describe "Help page" do
    before { get help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like 'all static pages'
  end

  describe "About page" do
    before { get about_path }
    let(:heading) { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contact page' do
    before { get contact_path }
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like 'all static pages'
  end
end
