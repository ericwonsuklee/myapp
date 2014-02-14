class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :description
      t.integer  :amount
      t.text :comment
      t.timestamps
    end
  end
end
