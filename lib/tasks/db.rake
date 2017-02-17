namespace :db do
  desc "Destroy all everything"
  task :clean => :environment do
    [Recipe, Appointment, Disease, User, Medicament, Profile].each do |model|
      model.destroy_all
    end
  end
end
