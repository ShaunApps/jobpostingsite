class AddNumberandEmailtoJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :phone_number, :integer
    add_column :jobs, :email, :string
  end
end
