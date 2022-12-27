class CreateBackgrounds < ActiveRecord::Migration[7.0]
  def change
    create_table :backgrounds do |t|
      t.string :image_url
      t.string :season

      t.timestamps
    end
  end
end
