# frozen_string_literal: true

module ShareasaleRuby
  # Report requests
  class Report < ShareasaleRuby::Base
    # date_start = optional. format mm/dd/yyyy. Default 30 days ago, no default when sortcol is transid.
    # date_end = optional. format mm/dd/yyyy. Default today, no default when sortcol is transid.
    # sort_col = optional. transid,commission,ssamount, or comment. Default transid.
    # sort_dir = optional. desc or asc. Default desc.
    # page = optional. default 1. page number to be returned.
    # previous_trans_id = optional. no default. transid reference point;
    # xml_format = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def transaction_detail(**args)
      @request_url = base_url +
                     '&action=transactiondetail' \
                     "&datestart=#{args[:date_start]}" \
                     "&dateend=#{args[:date_end]}" \
                     "&sortcol=#{args[:sort_col]}" \
                     "&sortdir=#{args[:sort_dir]}" \
                     "&page=#{args[:page]}" \
                     "&previousTransID=#{args[:previous_trans_id]}" \
                     "&xmlformat=#{args[:xml_format]}" \
                     "&format=#{args[:format]}"

      get_request
    end

    # date_start = optional. format mm/dd/yyyy. Default yesterday.
    # length_of_report = number of days report covers. Default 30.
    # chronology = optional. asc or desc. Default desc
    # user_id = optional. affiliate Id. Filter by affiliate.
    # xml_format = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def weekly_progress(**args)
      @request_url = base_url +
                     '&action=weeklyprogress' \
                     "&datestart=#{args[:date_start]}" \
                     "&lengthofreport=#{args[:length_of_report]}" \
                     "&chronology=#{args[:chronology]}" \
                     "&userId=#{args[:user_id]}" \
                     "&xmlformat=#{args[:xml_format]}" \
                     "&format=#{args[:format]}"

      get_request
    end

    # date_start = optional. format mm/dd/yyyy. Default yesterday.
    # date_end = optional. format mm/dd/yyyy. Default 8 days ago.
    # user_id = optional. affiliate ID. Filter by affiliate
    # sort_col = optional. hits,grosssales,reversals,netsales,sales,mcredits, or commissions. Default hits.
    # sort_dir = optional. desc or asc. Default desc.
    # xml_format = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def affiliate_timespan(**args)
      @request_url = base_url +
                     '&action=affiliatetimespan' \
                     "&datestart=#{args[:date_start]}" \
                     "&dateend=#{args[:date_end]}" \
                     "&userId=#{args[:user_id]}" \
                     "&sortcol=#{args[:sort_col]}" \
                     "&sortdir=#{args[:sort_dir]}" \
                     "&xmlformat=#{args[:xml_format]}" \
                     "&format=#{args[:format]}"

      get_request
    end

    # date_start = optional. format mm/dd/yyyy. Default today.
    # date_end = optional. format mm/dd/yyyy. Default today less 60 days.
    # user_id = optional. affiliate ID. Filter by affiliate
    # trans_high = optional. Number. Filter by transaction value.(ceiling)
    # transLow = optional. Number. Filter by transaction value.(floor)
    # showReversals = optional. 1 or 0. Default 0. Show reversals.
    # xml_format = optional. default 0. pass 1 to return results in XML format
    # format = optional. default 'pipe'. valid values are pipe, xml, and csv
    def activity_summary(**args)
      @request_url = base_url +
                     '&action=activitysummary' \
                     "&datestart=#{args[:date_start]}" \
                     "&dateend=#{args[:date_end]}" \
                     "&userId=#{args[:user_id]}" \
                     "&transHigh=#{args[:trans_high]}" \
                     "&transLow=#{args[:trans_low]}" \
                     "&showReversals=#{args[:show_reversals]}" \
                     "&xmlformat=#{args[:xml_format]}" \
                     "&format=#{args[:format]}"

      get_request
    end
  end
end
