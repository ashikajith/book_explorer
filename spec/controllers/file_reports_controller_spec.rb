require 'rails_helper'

RSpec.describe FileReportsController, type: :controller do

  describe "GET #index" do
    it 'assigns @file_reports' do
      # file_report = FileReport.create
      get :index
      expect(assigns(:file_reports)).to eq([file_report])
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
