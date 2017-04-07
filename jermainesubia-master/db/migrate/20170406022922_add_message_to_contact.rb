class AddMessageToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :message, :string
  end
end
