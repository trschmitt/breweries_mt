class AddBreweryIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :brewery
    add_foreign_key :events, :breweries, on_delete: :cascade
  end
end
