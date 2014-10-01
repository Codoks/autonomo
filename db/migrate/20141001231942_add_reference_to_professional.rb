class AddReferenceToProfessional < ActiveRecord::Migration
  def change
    add_reference :professionals, :user, index: true
  end
end
