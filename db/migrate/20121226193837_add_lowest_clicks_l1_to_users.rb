class AddLowestClicksL1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :LowestClicksL1, :integer
  end
end
