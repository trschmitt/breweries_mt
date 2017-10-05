class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :password_digest
      t.text   :description
      t.string :website
      t.string :established
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :operating_hours
      t.string :location_type

      t.timestamps
    end
  end
end
