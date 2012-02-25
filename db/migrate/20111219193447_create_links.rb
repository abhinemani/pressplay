class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :name
      t.integer :page_rank
      t.string :placement
      t.string :keyword
      t.integer :user_id

      t.timestamps
    end
  end
end
