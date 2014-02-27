class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.text :description
      t.float  :amount
      t.text :comment
      t.integer :fortrip
      t.timestamps
    end
  end
end
