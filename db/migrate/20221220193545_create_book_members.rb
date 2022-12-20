class CreateBookMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :book_members do |t|
      t.integer :book_id
      t.integer :member_id

      t.timestamps
    end
  end
end
