RSpec.describe Book, type: :model do
  describe ".import" do
    before :each do
      create(:author, title: 'artist1', date_published: nil, unique_code: 'blah', publisher: 'mahi', user_id: 1)
      create(:author, title: 'artist1', date_published: nil, unique_code: 'blah', publisher: 'mahi')
    end

    context "when facebook_url is empty" do
      it "updates facebook_url" do
        #Here I should somehow stub CSV with name, facebook_url
        #headers and row: artist1,artist1_facebook_url - HOW ?

        Artist.import(file)
        expect(Artist.find_by(name: 'artist1').facebook_url).to eq "artist1_facebook_url"
      end
    end
  end
end