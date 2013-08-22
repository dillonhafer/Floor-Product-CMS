namespace :spec do
  task :clone_structure do
    environments = YAML.load(File.read('config/database.yml'))
    `dropdb #{environments["test"]["database"]}`
    `createdb #{environments["test"]["database"]}`
    `pg_dump --schema-only -Fc #{environments["development"]["database"]} | pg_restore --dbname #{environments["test"]["database"]} --no-owner --no-privilege --single-transaction`
    `pg_dump -Fc #{environments["development"]["database"]} | pg_restore --data-only --dbname #{environments["test"]["database"]} --no-owner --no-privilege --single-transaction`
  end

  desc "Clone structure from development to test and load seed data into test"
  task :prepare => ["spec:clone_structure", :environment] do
    require 'active_record/fixtures'
    ActiveRecord::Base.establish_connection(:test)
    
    # Hack around Rails killing triggers when loading fixtures
    #class ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
    #  def supports_disable_referential_integrity?
    #    false
    #  end
    #end    
  end

  desc "Setup test database - drops, loads schema, migrates and seeds the test db"
  task :db do
    Rails.env = ENV['RAILS_ENV'] = 'test'
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
  end
end
