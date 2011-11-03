class AddHypDaysToCalf < ActiveRecord::Migration
  def self.up
    add_column :calves, :hypDays, :integer
  end

  def self.down
    remove_column :calves, :hypDays
  end
end
