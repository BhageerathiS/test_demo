class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end

