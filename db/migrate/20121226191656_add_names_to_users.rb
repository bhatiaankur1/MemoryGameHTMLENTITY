class AddNamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Names, :string
  end
end
