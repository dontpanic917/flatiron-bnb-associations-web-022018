class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :guest, index: true, foreign_key: true
      t.references :reservation, index: true, foreign_key: true
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
