# frozen_string_literal: true

require 'shareasale_ruby/version'
require 'shareasale_ruby/configuration'

require 'shareasale_ruby/services/base'
require 'shareasale_ruby/services/program_maintenance'
require 'shareasale_ruby/services/report'
require 'shareasale_ruby/services/transaction'

# base
module ShareasaleRuby
  class Error < StandardError; end

  class << self
    def configuration
      @configuration ||= ShareasaleRuby::Configuration.new
    end

    def reset
      @configuration = ShareasaleRuby::Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
