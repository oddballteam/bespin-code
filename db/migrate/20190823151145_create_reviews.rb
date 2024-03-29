class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.boolean :rating
      t.string :content
      t.belongs_to :service, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
