class AddExIdtoUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ex_id, :integer
  end
end
