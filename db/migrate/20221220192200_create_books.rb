class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.boolean :fiction
      t.string :leader
      t.string :meeting_date

      t.timestamps
    end
  end
end
