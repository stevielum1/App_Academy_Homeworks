require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    context "with invalid params" do
      it "redirects to the users template" do
        get :show, params: { id: -1 }
        expect(response).to redirect_to(users_url)
      end
    end
    context "with valid params" do
      it "renders the show template" do
        User.create!(email: "a@a.com", password: "aaaaaa")
        get :show, params: { id: User.last.id }
        expect(response).to render_template(:show)
      end
    end
  end

  describe "GET #new" do
    it "renders the new template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "validates the presence of the user's email and password" do
        post :create, params: { user: { email: "a@a.com" } }
        expect(response).to redirect_to(new_user_url)
      end

      it "validates that the password is at least 6 characters long" do
        post :create, params: { user: { email: "a@a.com", password: "short"} }
        expect(response).to redirect_to(new_user_url)
      end
    end

    context "with valid params" do
      it "redirects user to bands index on success" do
        post :create, params: { user: { email: "a@a.com", password: "aaaaaa"} }
        expect(response).to redirect_to(user_url(User.last))
      end
    end
  end
end
