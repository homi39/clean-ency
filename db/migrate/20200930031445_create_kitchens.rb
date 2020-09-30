class CreateKitchens < ActiveRecord::Migration[6.0]
  def change
    create_table :kitchens do |t|
      t.references :article, foreign_key: true
      t.timestamps
    end
  end
end