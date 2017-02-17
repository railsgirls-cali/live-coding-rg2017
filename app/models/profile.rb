# == Schema Information
#
# Table name: profiles
#
#  id          :integer          not null, primary key
#  name        :string
#  rating      :float
#  uuid        :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
