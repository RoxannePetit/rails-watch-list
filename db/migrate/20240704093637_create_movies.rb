class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :overview
      t.string :post_url

      t.timestamps
    end
  end
end
