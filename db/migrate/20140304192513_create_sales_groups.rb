class CreateSalesGroups < ActiveRecord::Migration
  def change
    create_table :sales_groups do |t|
      t.string :unique_id
      t.text :description

      t.timestamps
    end
  end
end
