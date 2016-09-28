class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :contact
      t.string :company
      t.string :location

      t.timestamps
    end
  end
end