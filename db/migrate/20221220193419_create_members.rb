class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :image
      t.boolean :active

      t.timestamps
    end
  end
end