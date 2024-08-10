namespace :db do
    desc 'Backup database'
    task backup: :environment do
      require 'fileutils'
      timestamp = Time.now.strftime('%Y%m%d%H%M%S')
      backup_file = "db/backup_#{timestamp}.sql"
      system("pg_dump -U postgres -F c devops_academy_development > #{backup_file}")
      puts "Database backup created: #{backup_file}"
    end
  end
  