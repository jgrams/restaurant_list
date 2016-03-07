class CreateRestLists < ActiveRecord::Migration
  def change
    create_table :rest_lists do |t|
      t.string :rest_name
      t.text :description
      t.string :phone_num
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :menu_link

      t.timestamps null: false
    end
  end
end
