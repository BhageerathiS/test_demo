class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, index: true, article_id :references
      t.timestamps null: false
    end
  end
end
#foreign_key: true
