class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :equipment_type
      t.string :description
      t.string :good_for
      t.string :image

      t.timestamps null: false
    end
  end
end
