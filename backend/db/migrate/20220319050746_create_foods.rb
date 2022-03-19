class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.datetime :expiration_date, null: false
      t.text :special_notes, null: true
    end
  end
end
