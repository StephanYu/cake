class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.boolean :success
      t.references :user_tab

      t.timestamps null: false
    end
  end
end
