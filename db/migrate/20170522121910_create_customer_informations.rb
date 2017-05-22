class CreateCustomerInformations < ActiveRecord::Migration
  def change
    create_table :customer_informations do |t|
      t.string :Customer_id
      t.string :Date_Joined
      t.string :Email_Address
      t.string :Outstanding_Charges

      t.timestamps
    end
  end
end
