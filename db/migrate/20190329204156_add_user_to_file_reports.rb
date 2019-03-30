class AddUserToFileReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :file_reports, :user, foreign_key: true
  end
end
