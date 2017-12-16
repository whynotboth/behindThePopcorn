class AddPrescriptionToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :prescription, :text
  end
end
