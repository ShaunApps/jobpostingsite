class ChangeNumberfromInttoString < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :phone_number, :string
  end
end
