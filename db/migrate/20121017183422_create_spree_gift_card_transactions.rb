class CreateSpreeGiftCardTransactions < ActiveRecord::Migration
  def change
    create_table :spree_gift_card_transactions do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.belongs_to :gift_card
      t.belongs_to :order
      t.timestamps
    end
  end
end
