# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  patient_id :integer
#  doctor_id  :integer
#  name       :string
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
