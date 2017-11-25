require 'rails_helper'

describe 'User pages' do
  describe 'edit' do
    let(:user) { FactoryBot.create(:user) }
    before do
      sign_in user, no_capybara: true
      get edit_user_path(user)
    end

    describe "forbidden attributes" do
      let(:params) do
        {
          params: {
                    user: {
                            admin: true, password: user.password,
                            password_confirmation: user.password
                          }
                    }
        }
      end
      before do
        sign_in user, no_capybara: true
        patch user_path(user), params
      end
      specify { expect(user.reload).not_to be_admin }
    end
  end
end