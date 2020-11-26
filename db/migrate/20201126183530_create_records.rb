class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :username, default: 'Anonymous'
      t.float :score
      t.integer :level
      t.timestamps
    end
  end
end
