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

require 'test_helper'

class MedicamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
