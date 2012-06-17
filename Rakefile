require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  task :environment do
    require 'active_record'
    ActiveRecord::Base.establish_connection('mysql://app5315771:fNRKdpEP@instance18199.db.xeround.com.:12020/app5315771')
  end
  
  desc "Migrate the database"
    task(:migrate => :environment) do
      ActiveRecord::Base.logger = Logger.new(STDOUT)
      ActiveRecord::Migration.verbose = true
      ActiveRecord::Migrator.migrate("db/migrate")
    end
end