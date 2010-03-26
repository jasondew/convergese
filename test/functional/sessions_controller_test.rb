require "test_helper"

class SessionsControllerTest < ActionController::TestCase

  context "the sessions controller" do

    context "on GET of index" do
      setup { get :index }

      should_respond_with :success
    end

    context "on GET of new" do
      setup { get :new }

      should_respond_with :success
    end

    context "on POST to create" do
      setup { post :create, :session => Factory.build(:session).attributes }

      should_redirect_to("sessions index") { sessions_path }
    end

    context "on GET of edit" do
      setup { get :edit, :id => Factory(:session).to_param }

      should_respond_with :success
    end

    context "on PUT to update" do
      setup { put :update, :id => Factory(:session).to_param }

      should_redirect_to("sessions index") { sessions_path }
    end

    context "on DELETE of destroy" do
      setup { delete :destroy, :id => Factory(:session).to_param }

      should_redirect_to("sessions index") { sessions_path }
    end

  end

end
