require "shareasale_ruby/version"
require "shareasale_ruby/configuration"

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

    ## base methods -- start
    def share_sale

    end

    def report_activity_summary

    end
    ## base methods -- end
  end
end
