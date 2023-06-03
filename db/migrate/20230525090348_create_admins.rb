class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :City
      t.string :Author
      t.text :Title
      t.text :Short_Discription
      t.text :Full_Discription
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
