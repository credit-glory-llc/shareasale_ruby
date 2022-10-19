# frozen_string_literal: true

module ShareasaleRuby
  # configuration accessors
  class Configuration
    attr_accessor :api_token, :api_secret_key,
                  :merchant_id, :version

    def initialize
      @api_token = nil
      @api_secret_key = nil
      @merchant_id = nil
      @version = nil
    end
  end
end
