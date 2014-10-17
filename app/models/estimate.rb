class Estimate < ActiveRecord::Base
  belongs_to :client
  belongs_to :professional
  has_many :messages
end
