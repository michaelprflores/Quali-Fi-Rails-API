class RemoveOpeningColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :openings, :local
  end
end
