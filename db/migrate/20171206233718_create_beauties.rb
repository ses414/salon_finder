class CreateBeauties < ActiveRecord::Migration[5.1]
  def change
    create_table :beauties do |t|
      t.string :name
      t.decimal :rating
      t.string :address
      t.string :address2
      t.string :address3
      t.string :city
      t.string :phone
      t.string :price
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
