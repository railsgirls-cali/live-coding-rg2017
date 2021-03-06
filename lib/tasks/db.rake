namespace :db do
  desc "Destroy all everything"
  task :clean => :environment do
    [Recipe, Appointment, Disease, Profile, Medicament, User].each do |model|
      puts "Deleting all #{model}, there were #{model.count} records."
      model.destroy_all
    end
    puts "Done!"
  end

  desc "Show some stats"
  task :stats => :environment do
    [Recipe, Appointment, Disease, Profile, Medicament, User].each do |model|
      puts "Model #{model} has #{model.count} records."
    end
    puts "Done!"
  end

end
