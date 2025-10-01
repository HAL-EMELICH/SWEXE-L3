class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :detail
      t.binary :image

      t.timestamps
    end
  end
end
