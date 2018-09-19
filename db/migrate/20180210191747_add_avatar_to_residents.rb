class AddAvatarToResidents < ActiveRecord::Migration[5.1]
  def change
    add_column :residents, :avatar, :binary
  end
end
