class CreateCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :compras do |t|
      t.datetime :fecha
      t.float :cantidad
      t.string :crypto

      t.timestamps
    end
  end
end
