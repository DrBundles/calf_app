class RemoveNotesFromCalf < ActiveRecord::Migration
  def self.up
    remove_column :calves, :notes
  end

  def self.down
    add_column :calves, :notes, :float
  end
end
