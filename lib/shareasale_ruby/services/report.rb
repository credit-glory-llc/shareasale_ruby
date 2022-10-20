# frozen_string_literal: true

module ShareasaleRuby
  # Report requests
  class Report < ShareasaleRuby::Base

    # datestart = optional. format mm/dd/yyyy. Default 30 days ago, no default when sortcol is transid.
    # dateend = optional. format mm/dd/yyyy. Default today, no default when sortcol is transid.
    # sortcol = optional. transid,commission,ssamount, or comment. Default transid.
    # sortdir = optional. desc or asc. Default desc.
    # page = optional. default 1. page number to be returned.
    # previousTransID = optional. no default. transid reference point;
    # xmlformat = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def transaction_detail(**args)
      @request_url = base_url + '&action=transactiondetail&' + args.to_query

      get_request
    end

    # datestart = optional. format mm/dd/yyyy. Default yesterday.
    # lengthofreport = number of days report covers. Default 30.
    # chronology = optional. asc or desc. Default desc
    # userId = optional. affiliate Id. Filter by affiliate.
    # xmlformat = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def weekly_progress(**args)
      @request_url = base_url + '&action=weeklyprogress&' + args.to_query

      get_request
    end

    # datestart = optional. format mm/dd/yyyy. Default yesterday.
    # dateend = optional. format mm/dd/yyyy. Default 8 days ago.
    # userId = optional. affiliate ID. Filter by affiliate
    # sortcol = optional. hits,grosssales,reversals,netsales,sales,mcredits, or commissions. Default hits.
    # sortdir = optional. desc or asc. Default desc.
    # xmlformat = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def affiliate_timespan(**args)
      @request_url = base_url + '&action=affiliatetimespan&' + args.to_query

      get_request
    end

    # datestart = optional. format mm/dd/yyyy. Default today.
    # dateend = optional. format mm/dd/yyyy. Default today less 60 days.
    # userId = optional. affiliate ID. Filter by affiliate
    # transHigh = optional. Number. Filter by transaction value.(ceiling)
    # transLow = optional. Number. Filter by transaction value.(floor)
    # showReversals = optional. 1 or 0. Default 0. Show reversals.
    # xmlformat = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def activity_summary(**args)
      @request_url = base_url + '&action=activitysummary&' + args.to_query

      get_request
    end
  end
end
