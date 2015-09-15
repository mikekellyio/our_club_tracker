require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::ChildrenController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Child. As you add validations to Admin::Child, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {first_name: "First", last_name: "Last"}
  }

  let(:invalid_attributes) {
    {first_name: nil}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::ChildrenController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all admin_children as @admin_children" do
      child = Child.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:admin_children)).to eq([child])
    end
  end

  describe "GET #show" do
    it "assigns the requested admin_child as @admin_child" do
      child = Child.create! valid_attributes
      get :show, {:id => child.to_param}, valid_session
      expect(assigns(:admin_child)).to eq(child)
    end
  end

  describe "GET #new" do
    it "assigns a new admin_child as @admin_child" do
      get :new, {}, valid_session
      expect(assigns(:admin_child)).to be_a_new(Child)
    end
  end

  describe "GET #edit" do
    it "assigns the requested admin_child as @admin_child" do
      child = Child.create! valid_attributes
      get :edit, {:id => child.to_param}, valid_session
      expect(assigns(:admin_child)).to eq(child)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Admin::Child" do
        expect {
          post :create, {:admin_child => valid_attributes}, valid_session
        }.to change(Child, :count).by(1)
      end

      it "assigns a newly created admin_child as @admin_child" do
        post :create, {:admin_child => valid_attributes}, valid_session
        expect(assigns(:admin_child)).to be_a(Child)
        expect(assigns(:admin_child)).to be_persisted
      end

      it "redirects to the created admin_child" do
        post :create, {:admin_child => valid_attributes}, valid_session
        expect(response).to redirect_to(admin_child_path(Child.last))
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved admin_child as @admin_child" do
        post :create, {:admin_child => invalid_attributes}, valid_session
        expect(assigns(:admin_child)).to be_a_new(Child)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {first_name: "Updated", last_name: "Updated"}
      }

      it "updates the requested admin_child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :admin_child => new_attributes}, valid_session
        child.reload
        expect(child.first_name).to eq("Updated")
        expect(child.last_name).to eq("Updated")
      end

      it "assigns the requested admin_child as @admin_child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :admin_child => valid_attributes}, valid_session
        expect(assigns(:admin_child)).to eq(child)
      end

      it "redirects to the admin_child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :admin_child => valid_attributes}, valid_session
        expect(response).to redirect_to(admin_child_path(child))
      end
    end

    context "with invalid params" do
      it "assigns the admin_child as @admin_child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :admin_child => invalid_attributes}, valid_session
        expect(assigns(:admin_child)).to eq(child)
      end

      it "re-renders the 'edit' template" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :admin_child => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested admin_child" do
      child = Child.create! valid_attributes
      expect {
        delete :destroy, {:id => child.to_param}, valid_session
      }.to change(Child, :count).by(-1)
    end

    it "redirects to the admin_children list" do
      child = Child.create! valid_attributes
      delete :destroy, {:id => child.to_param}, valid_session
      expect(response).to redirect_to(admin_children_url)
    end
  end

end
