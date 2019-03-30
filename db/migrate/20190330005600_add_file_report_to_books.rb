class AddFileReportToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :file_report, foreign_key: true
  end
end
