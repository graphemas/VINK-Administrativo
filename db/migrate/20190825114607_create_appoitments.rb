class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
      t.string :subject
      t.string :description
      t.string :slug
      t.string :store
      t.timestamps
    end
  end
end
