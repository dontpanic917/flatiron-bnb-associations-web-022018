class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :host, index: true, foreign_key: true
      t.references :neighborhood, index: true, foreign_key: true
      t.string :title
      t.string :description
      t.string :address
      t.float :price
      t.string :listing_type

      t.timestamps null: false
    end
  end
end
