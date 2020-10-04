class ChangeDatatypeBirthOfUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :birth, :date
  end
end