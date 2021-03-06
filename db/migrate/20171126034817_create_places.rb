class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
