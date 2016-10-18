class AddToggleNumandEmailtoJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :toggle_number_email, :string
  end
end
