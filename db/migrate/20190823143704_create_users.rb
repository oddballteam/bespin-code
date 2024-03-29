class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.belongs_to :role, foreign_key: true

      t.timestamps
    end
  end
end
