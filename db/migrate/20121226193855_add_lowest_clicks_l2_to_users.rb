class AddLowestClicksL2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :LowestClicksL2, :integer
  end
end
