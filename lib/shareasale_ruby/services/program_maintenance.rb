# frozen_string_literal: true

module ShareasaleRuby
  # Program Maintenance requests
  class ProgramMaintenance < ShareasaleRuby::Base

    # modifiedSince = optional return only creatives modified after given date (mm/dd/yyyy) format
    # category = optional return only creatives in the given category
    def banner_list(**args)
      @request_url = base_url + '&action=bannerList&' + args.to_query

      get_request
    end
  end
end
