class AddReferencesToProfessional < ActiveRecord::Migration
  def change
    add_reference :professionals, :profession, index: true
  end
end
