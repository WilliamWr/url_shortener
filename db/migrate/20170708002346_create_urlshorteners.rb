class CreateUrlshorteners < ActiveRecord::Migration[5.1]
  def change
    create_table :urlshorteners do |t|
      t.string :longurl
      t.string :shorturl

      t.timestamps
    end
  end
end
