class CreateUserTabs < ActiveRecord::Migration
  def change
    create_table :user_tabs do |t|
      t.references :user
      t.references :tab

      t.timestamps null: false
    end
  end
end
