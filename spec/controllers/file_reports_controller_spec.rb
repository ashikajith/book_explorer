require 'rails_helper'

RSpec.describe FileReportsController, type: :controller do

  describe "GET #index" do
    it "populates an array of contacts" do
      file_reports = FactoryGirl.create(:file_report)
      get :index
      expect(:file_reports).to eq([file_reports])
    end
    it "renders the :index view" do
      get :index
      expect(response).to be_ok
    end
  end

  describe "GET #show" do
    it "assigns the requested contact to @contact"
    it "renders the :show template"
  end

  describe "GET #new" do
    it "assigns a new Contact to @contact"
    it "renders the :new template"
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new contact in the database"
      it "redirects to the home page"
    end
  end
end
