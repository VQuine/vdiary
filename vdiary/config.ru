require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #<--allow for patch (and delete) requests

run ApplicationController
use EntriesController
use UsersController
