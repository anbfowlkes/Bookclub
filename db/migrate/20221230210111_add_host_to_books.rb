class AddHostToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :host, :string
  end
end
