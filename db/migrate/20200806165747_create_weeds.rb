class CreateWeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :weeds do |t|
      t.string :strain
      t.float :thc_percentage
      t.string :lineage
      t.string :feelings
      t.float :cbd_percentage
      t.string :terpene
      t.string :medical_use
      t.string :brand

      t.timestamps
    end
  end
end
