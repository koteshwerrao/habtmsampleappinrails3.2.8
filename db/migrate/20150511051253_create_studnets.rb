class CreateStudnets < ActiveRecord::Migration
  def change
    create_table :studnets do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :address

      t.timestamps
    end
  end
end
