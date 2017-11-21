require 'rails_helper'

describe "User pages" do

  subject { response.body }

  describe "signup page" do
    before { get signup_path }

    it { should include('Sign up') }
    it { assert_select 'title', full_title('Sign up') }
  end
end
