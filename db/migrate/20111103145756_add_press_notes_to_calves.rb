class AddPressNotesToCalves < ActiveRecord::Migration
  def self.up
    add_column :calves, :pressNotes, :text
  end

  def self.down
    remove_column :calves, :pressNotes
  end
end
