class AddBooleanToEstimate < ActiveRecord::Migration
  def change
    add_column :estimates, :open, :boolean
  end
end
