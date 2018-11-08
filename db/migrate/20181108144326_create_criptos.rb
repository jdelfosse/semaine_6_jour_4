class CreateCriptos < ActiveRecord::Migration[5.2]
  def change
    create_table :criptos do |t|
      t.string :value
      t.string :currency
      t.timestamps
    end
  end
end
