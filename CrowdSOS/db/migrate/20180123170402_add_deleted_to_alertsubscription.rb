class AddDeletedToAlertsubscription < ActiveRecord::Migration[5.1]
  def change
    add_column :alertsubscriptions, :deleted, :Boolean
  end
end
