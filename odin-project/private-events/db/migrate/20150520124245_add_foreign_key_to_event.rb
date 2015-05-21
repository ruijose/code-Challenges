class AddForeignKeyToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :user
    add_foreign_key :events, :users
  end
end
