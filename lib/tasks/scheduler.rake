# frozen_string_literal: true


desc "This task is called by the Heroku scheduler add-on to reset the demo"
task :reset_demo => :environment do
  DatabaseCleaner.allow_production = true
  DatabaseCleaner.allow_remote_database_url = true
  puts "Cleaning Up The DB..."
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
  puts "Seeding the DB again..."
  Rake::Task["db:seed"].invoke
  puts "done!"
end