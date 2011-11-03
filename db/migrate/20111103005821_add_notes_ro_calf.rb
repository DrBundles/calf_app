class AddNotesRoCalf < ActiveRecord::Migration
  def self.up
    add_column :calves, :notes, :text
  end

  def self.down
    remove_column :calves, :notes
  end
end
