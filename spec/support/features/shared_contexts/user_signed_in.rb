shared_context "user signed in" do
  let(:user) { create :user }

  before(:each) do
    login_as user
  end
end
