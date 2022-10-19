# frozen_string_literal: true

require 'rails/generators'

module ShareasaleRuby
  module Generators
    # Installs ShareasaleRuby config
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __dir__)

      desc 'Creates a config file.'

      def copy_config
        template 'shareasale_ruby_config.rb', "#{Rails.root}/config/initializers/shareasale_ruby.rb"
      end
    end
  end
end
