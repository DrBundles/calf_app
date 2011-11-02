class CreateCalves < ActiveRecord::Migration
  def self.up
    create_table :calves do |t|
      t.string :lotNum
      t.string :contHyp
      t.float  :age
      t.string :gender
      t.date   :sacrificeDate
      t.float  :pasys
      t.float  :padias
      t.float  :pamean
      t.float  :aosys
      t.float  :aodias
      t.float  :aomean
      t.float  :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :calves
  end
end
