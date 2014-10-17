class AddDecimalToEstimate < ActiveRecord::Migration
  def change
    add_column :estimates, :value, :decimal
  end
end
