require 'rails_helper'

describe "User pages" do

  subject { response.body }

  describe "profile page" do
    let(:user) { FactoryBot.create(:user) }
    before { get user_path(user) }

    it { should include(user.name) }
    it { assert_select 'title', full_title(user.name) }
  end

  describe "signup page" do
    before { get signup_path }

    it { should include('Sign up') }
    it { assert_select 'title', full_title('Sign up') }
  end
end
