class UpdateArtistTable < ActiveRecord::Migration[5.1]
  def change
    change_table :artists do |t|
      t.remove :first_name, :last_name
      t.string :name
    end
  end
end
