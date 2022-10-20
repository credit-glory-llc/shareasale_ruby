# frozen_string_literal: true

require 'digest'
require 'time'
require 'net/https'
require 'uri'

module ShareasaleRuby
  # Base class for connection
  class Base
    attr_accessor :api_token, :api_secret_key, :merchant_id, :version,
                  :timestamp, :sig, :sig_hash,
                  :base_url, :request_url

    def initialize
      @api_token = ShareasaleRuby.configuration.api_token
      @api_secret_key = ShareasaleRuby.configuration.api_secret_key
      @merchant_id = ShareasaleRuby.configuration.merchant_id
      @version = ShareasaleRuby.configuration.version
      @timestamp = Time.now.utc.to_s.gsub('UTC', 'GMT')

      construct_signatures
      construct_base_url
    end

    private

    def construct_signatures
      @sig = "#{api_token}:#{timestamp}:new:#{api_secret_key}"
      @sig_hash = Digest::SHA256.hexdigest(sig).upcase
    end

    def construct_base_url
      @base_url = 'https://api.shareasale.com/w.cfm?' \
                  "merchantId=#{merchant_id}" \
                  "&token=#{api_token}" \
                  "&version=#{version}"
    end

    def perform_get_request
      # setup request params
      url = URI.parse(request_url)
      req = Net::HTTP::Get.new(url.to_s)
      req.add_field('x-ShareASale-Date', timestamp)
      req.add_field('x-ShareASale-Authentication', sig_hash)

      # execute request
      res = Net::HTTP.new(url.host, url.port)
      res.use_ssl = true

      res.start do |http|
        http.request(req).body
      end
    end
  end
end
