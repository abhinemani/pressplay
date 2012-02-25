class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.integer :link_id
      t.string :description

      t.timestamps
    end
  end
end
