class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.text :name
      t.integer :population
      t.text :flag_url
      t.text :language
      t.text :leader

      t.timestamps
    end
  end
end
