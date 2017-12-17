class AddRottenscoreToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :scoreRT, :int
  end
end
