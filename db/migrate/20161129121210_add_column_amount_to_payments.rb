class AddColumnAmountToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :amount, :float
  end
end
