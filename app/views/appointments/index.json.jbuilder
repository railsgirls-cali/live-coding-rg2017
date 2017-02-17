# json.array! @appointments, partial: 'appointments/appointment', as: :appointment

json.array!(@appointments) do |appointment|
  json.id appointment.id
  json.name appointment.name
  json.start appointment.start_time
  json.end appointment.end_time
  # for now, below line is not important bc I'm using an AJAX configuration for that
  json.url appointment_url(appointment)
end
