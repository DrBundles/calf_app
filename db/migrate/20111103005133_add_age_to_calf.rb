class AddAgeToCalf < ActiveRecord::Migration
  def self.up
    add_column :calves, :age, :integer
  end

  def self.down
    remove_column :calves, :age
  end
end
