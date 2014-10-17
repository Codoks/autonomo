class ProfessionalsProfessions < ActiveRecord::Base
  belongs_to :professional
  belongs_to :profession
end
