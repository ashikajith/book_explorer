class FileReport < ApplicationRecord
  mount_uploader :data_file, FileUploader
  validates_presence_of :data_file #Validation
  # Association
  belongs_to :user # class_name: "user", foreign_key: "user_id"
  has_many :books

  after_create :import_records

  def import_records
    Book.import_records(data_file, id)
  end
end
