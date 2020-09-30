class CreateBaths < ActiveRecord::Migration[6.0]
  def change
    create_table :baths do |t|
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end
