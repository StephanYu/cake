class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end

    create_table :venue_row do |t|
      t.integer :report_id
      t.string :venue_name
      t.integer :transactions
      t.float :value

      t.timestamps null: false
    end
  end
end
