class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.string :password_digest

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
