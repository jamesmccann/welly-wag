require 'spec_helper'

describe VotesController, type: :controller do

  let(:link) { create(:post) }
  let(:user) { create(:user) }

  describe "POST create" do
    before do
      sign_in user
      request.env["HTTP_REFERER"] = '/'
      post :create, post_id: link.id
    end

    it { expect(assigns(:voteable)).to eq(link) }
  end
end
