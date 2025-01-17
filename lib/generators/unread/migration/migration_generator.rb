require 'rails/generators'
require 'rails/generators/migration'
require 'generators/unread/generator_helper'

module Unread
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    extend Unread::Generators::GeneratorHelper

    desc "Generates migration for read_markers"
    source_root File.expand_path('../templates', __FILE__)

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/unread_migration.rb'
    end
  end
end
