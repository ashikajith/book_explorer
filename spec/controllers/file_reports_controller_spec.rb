require 'rails_helper'

RSpec.describe FileReportsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }
  before(:each) do
    sign_in(user)
  end
  describe "GET #index" do
    count = FileReport.all.count
    it "populates an array of contacts" do
      file_report = FileReport.new(user_id: user.id)
      file_report.data_file = fixture_file_upload(Rails.root + "spec/fixtures/book_test.csv")
      file_report.save
      get :index
      expect(FileReport.all.count).to eq(count + 1)
    end
    it "renders the :index view" do
      get :index
      expect(response).to be_ok
    end
  end

  describe "Create File Report with file type other than csv" do
    count = FileReport.all.count
    it "List the already created File Reports" do
      file_report = FileReport.new(user_id: user.id)
      file_report.data_file = fixture_file_upload(Rails.root + "spec/fixtures/neo_sort.rb")
      file_report.save
      get :index
      expect(FileReport.all.count).to eq(count)
    end
    it "renders the :index view" do
      get :index
      expect(response).to be_ok
    end
  end

end
