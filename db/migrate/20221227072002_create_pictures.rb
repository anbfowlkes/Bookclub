class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
