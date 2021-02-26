def dump_path
  Rails.root.join('db/dump.psql').to_path
end

def db_name
  config = Rails.configuration.database_configuration[Rails.env]
  "#{config['url']}/#{config['database']}"
end

task :db_dump do
  system "pg_dump -Fc --no-owner --dbname=#{db_name} > #{dump_path}"
end

task :db_load do
  system "pg_restore --no-owner --dbname=#{db_name} #{dump_path}"
end
