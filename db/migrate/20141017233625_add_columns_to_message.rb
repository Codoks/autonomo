class AddColumnsToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :readed, :boolean
    add_reference :messages, :user, index: true
  end
end
