class RemoveOpeningColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :local, :boolean
  end
end
