RSpec.describe Book, type: :model do
  let(:user) { FactoryGirl.create(:user) }
  # Attrbiutes title,author,date_published,unique_code,publisher
  describe "Importing a CSV file to Book model" do

    it 'Creates the book record by loading all the css attributes and the values' do
      file_report = FileReport.new(user_id: user.id)
      file_report.data_file = fixture_file_upload(Rails.root + "spec/fixtures/upload.csv")
      file_report.save
      Book.import_records(file_report.data_file, file_report.id)
      expect(Book.last.title).to eq('rails cook book')
    end
  end
end
