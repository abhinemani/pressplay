class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :link_id
      t.integer :user_id
      t.float :amount
      t.integer :seller_id
      t.integer :payment_method_id
      t.datetime :paid_at
      t.datetime :next_payment_at

      t.timestamps
    end
  end
end
