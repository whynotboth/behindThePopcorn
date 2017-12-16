class AddQuickdirtToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :quickdirt, :text
  end
end
