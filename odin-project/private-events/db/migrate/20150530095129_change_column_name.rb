class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :events, :body, :location
  end
end
