class CreateResidents < ActiveRecord::Migration[5.1]
  def change
    create_table :residents do |t|
      t.string :name
      t.string :bio
      t.string :description

      t.timestamps
    end
  end
end
