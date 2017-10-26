require 'rails_helper'

RSpec.describe DocumentsController, type: :controller do

  before do
    @company = Company.create! name: 'Test Company', domain: 'company.com'
    @user = User.create! email: 'glenn@company.com', password: 'example'
    sign_in :user, @user #admin # sign_in(scope, resource)
    @document = Document.create! name: 'Test Name', content: 'Test Content', company: @company
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: @document.id }
      expect(response).to have_http_status(:success)
    end
  end

end
