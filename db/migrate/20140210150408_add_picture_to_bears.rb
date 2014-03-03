class AddPictureToBears < ActiveRecord::Migration
  def change
    add_column :bears, :picture, :string
  end
end
