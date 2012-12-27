class AddLowestClicksL4ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :LowestClicksL4, :integer
  end
end
