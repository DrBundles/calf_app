class RemoveAgeFromCalf < ActiveRecord::Migration
  def self.up
    remove_column :calves, :age
  end

  def self.down
    add_column :calves, :age, :float
  end
end
