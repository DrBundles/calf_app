class AddSpreadsheetDataToCalves < ActiveRecord::Migration
  def self.up
    add_column :calves, :base_HR, :integer
    add_column :calves, :base_cardiacOutput, :float
    add_column :calves, :base_cardiacIndex, :integer
    add_column :calves, :base_mean_pap, :integer
    add_column :calves, :base_sys_pap, :integer
    add_column :calves, :base_dias_pap, :integer
    add_column :calves, :base_pulse_pap, :integer
    add_column :calves, :alt_HR, :integer
    add_column :calves, :alt_cardiacOutput, :float
    add_column :calves, :alt_cardiacIndex, :integer
    add_column :calves, :alt_mean_pap, :integer
    add_column :calves, :alt_sys_pap, :integer
    add_column :calves, :alt_dias_pap, :integer
    add_column :calves, :alt_pulse_pap, :integer
  end

  def self.down
    remove_column :calves, :alt_pulse_pap
    remove_column :calves, :alt_dias_pap
    remove_column :calves, :alt_sys_pap
    remove_column :calves, :alt_mean_pap
    remove_column :calves, :alt_cardiacIndex
    remove_column :calves, :alt_cardiacOutput
    remove_column :calves, :alt_HR
    remove_column :calves, :base_pulse_pap
    remove_column :calves, :base_dias_pap
    remove_column :calves, :base_sys_pap
    remove_column :calves, :base_mean_pap
    remove_column :calves, :base_cardiacIndex
    remove_column :calves, :base_cardiacOutput
    remove_column :calves, :base_HR
  end
end
