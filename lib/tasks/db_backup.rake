namespace :db do
    desc 'Backup database to local storage'
    task backup_to_local: :environment do
      # require 'aws-sdk-s3' # Commented out for local backup
  
      # AWS S3 client initialization (commented out)
      # s3 = Aws::S3::Resource.new(region: 'us-east-1')
      # bucket = s3.bucket('my-app-backups')
  
      timestamp = Time.now.strftime('%Y%m%d%H%M%S')
      backup_file = "db/backup_#{timestamp}.sql"
      
      # Perform local database backup
      system("pg_dump -U postgres -F c devops_academy_development > #{backup_file}")
  
      # Uncomment the following block to upload to S3 once ready
      # bucket.object("backups/#{backup_file}").upload_file(backup_file)
      # puts "Database backup uploaded to S3: backups/#{backup_file}"
  
      puts "Database backup created locally: #{backup_file}"
    end
  end
  