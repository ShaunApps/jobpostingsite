class AddEmailandNumberSeperateThingstoJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :toggle_number_email, :string
    add_column :jobs, :email_shown, :boolean
    add_column :jobs, :phone_number_shown, :boolean
  end
end
