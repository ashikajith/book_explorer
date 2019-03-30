class CreateFileReports < ActiveRecord::Migration[5.2]
  def change
    create_table :file_reports do |t|
      t.string :file_name
      t.string :data_file

      t.timestamps
    end
  end
end
