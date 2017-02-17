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

class Appointment < ApplicationRecord

  belongs_to :patient, class_name: 'User'
  belongs_to :doctor, class_name: 'User'
end
