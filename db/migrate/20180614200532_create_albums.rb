class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :photo_url
      t.integer :trip_id
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
