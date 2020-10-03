class CreateToComments < ActiveRecord::Migration[6.0]
  def change
    create_table :to_comments do |t|
      t.text       :text,    null: false
      t.references :user,    null: false, foreign_key: true
      t.references :toilet,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
