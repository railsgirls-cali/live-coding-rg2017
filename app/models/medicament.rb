# == Schema Information
#
# Table name: medicaments
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  brand       :string
#  price       :float
#  disease_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Medicament < ApplicationRecord
  belongs_to :disease
end
