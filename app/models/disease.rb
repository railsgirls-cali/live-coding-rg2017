# == Schema Information
#
# Table name: diseases
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Disease < ApplicationRecord
  has_many :recipes
  has_many :medicaments
end
