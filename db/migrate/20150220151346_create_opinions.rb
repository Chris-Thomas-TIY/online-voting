class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.boolean :vote
      t.integer :constituent_id
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
