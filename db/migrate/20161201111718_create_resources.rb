class CreateResources < ActiveRecord::Migration
  def change
    create_table :use do |t|
      t.integer :receiver_id
      t.integer :giver_id
      t.integer :resource_id

      t.text :description

      t.timestamps
    end
  end
end
