class CreateDonuts < ActiveRecord::Migration[6.0]
  def change
    create_table :donuts do |t|
      t.string :name
      t.string :weight

      t.timestamps
    end
  end
end
