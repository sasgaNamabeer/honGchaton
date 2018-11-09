class CreateServes < ActiveRecord::Migration[5.0]
  def change
    create_table :serves do |t|
      t.string :title
      t.string :content
      t.integer :person
      t.date :start_date
      t.date :end_data
      t.string :location
      t.references :user, foreign_key: true
      t.integer :complete

      t.timestamps
    end
  end
end