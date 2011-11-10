class RemovePaPressFromCalves < ActiveRecord::Migration
  def self.up
    remove_column :calves, :pasys
    remove_column :calves, :padias
    remove_column :calves, :pamean
    remove_column :calves, :aosys
    remove_column :calves, :aodias
    remove_column :calves, :aomean
  end

  def self.down
    add_column :calves, :aomean, :float
    add_column :calves, :aodias, :float
    add_column :calves, :aosys, :float
    add_column :calves, :pamean, :float
    add_column :calves, :padias, :float
    add_column :calves, :pasys, :float
  end
end
