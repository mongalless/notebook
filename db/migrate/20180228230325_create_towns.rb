class CreateTowns < ActiveRecord::Migration[5.1]
  def change
    create_table :towns do |t|
      t.string :town_name
      t.string :country_name

      t.timestamps
    end
  end
end
