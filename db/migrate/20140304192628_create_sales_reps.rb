class CreateSalesReps < ActiveRecord::Migration
  def change
    create_table :sales_reps do |t|
      t.string :unique_id
      t.string :first_name
      t.string :last_name
      t.integer :sales_group_id

      t.timestamps
    end
  end
end
