class CreateKiComments < ActiveRecord::Migration[6.0]
  def change
    create_table :ki_comments do |t|
      t.text       :text,    null: false
      t.references :user,    null: false, foreign_key: true
      t.references :kitchen, null: false, foreign_key: true
      t.timestamps
    end
  end
end
