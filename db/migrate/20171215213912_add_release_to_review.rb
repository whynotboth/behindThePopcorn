class AddReleaseToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :release, :date
  end
end
