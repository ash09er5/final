class CreateMarketplaces < ActiveRecord::Migration
  def change
    create_table :marketplaces do |t|
      t.string :Order_id
      t.string :Product_Name
      t.string :Price
      t.string :Customer_id

      t.timestamps
    end
  end
end
