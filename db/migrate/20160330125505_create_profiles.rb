class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :phone
      t.belongs_to :user, index: true, foreign_key: true, :unique => true

      t.timestamps null: false
    end
  end
end
