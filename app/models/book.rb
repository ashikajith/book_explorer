class Book < ApplicationRecord
  require 'csv'
  require 'csv_validator'

  # Associations
  belongs_to :file_report # class_name: "file_report", foreign_key: "file_report_id"
  def self.import_records(file, file_report_id)
    CSV.foreach(file.path, headers: true) do |row|
      row_invalid = CsvValidator.new(row.to_hash).validate_fields
      if !row_invalid
        Book.create! row.to_hash.merge('file_report_id' => file_report_id.to_i)
      else
        break
      end
    end
  end
end
