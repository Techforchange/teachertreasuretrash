class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.integer :receiver_id
      t.integer :giver_id

      t.text :description

      t.timestamps
    end
  end
end
