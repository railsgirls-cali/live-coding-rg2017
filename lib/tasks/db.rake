namespace :db do
  desc "Destroy all everything"
  task :clean => :environment do
    [Recipe, Appointment, Disease, User, Medicament, Profile].each do |model|
      puts "Deleting all #{model}, there were #{model.count} records."
      model.destroy_all
    end
    puts "Done!"
  end
end
