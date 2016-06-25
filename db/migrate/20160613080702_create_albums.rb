class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.binary :picture
      t.string :year
    end
  end
end
