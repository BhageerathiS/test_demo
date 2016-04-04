class CreateUlogins < ActiveRecord::Migration
  def change
    create_table :ulogins do |t|
      t.string :name
      t.string :emali
      t.string :encrypted_password
      t.string :salt

      t.timestamps null: false
    end
  end
end
