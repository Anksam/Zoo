class CreateZooos < ActiveRecord::Migration[5.0]
  def change
    create_table :zooos do |t|
      t.string :name
      t.string :city
      t.integer :zipcode
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
