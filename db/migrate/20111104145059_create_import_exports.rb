class CreateImportExports < ActiveRecord::Migration
  def self.up
    create_table :import_exports do |t|
      t.string  :attachment_file_name
      t.string  :attachment_file_type
      t.integer :attachment_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :import_exports
  end
end
