class AddVideoToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :video, :string
  end
end
