class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :reservationId
      t.integer :userId
      t.string :review

      t.timestamps
    end
  end
end
