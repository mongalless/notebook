class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name_surname
      t.string :photo_link
      t.string :phone_number
      t.string :country_name
      t.string :town_name
      t.datetime :birthday_date
      t.string :email
      t.string :facebook_link
      t.text :other_social_links

      t.timestamps
    end
  end
end
