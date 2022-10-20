# frozen_string_literal: true

module ShareasaleRuby
  # Transaction requests
  class Transaction < ShareasaleRuby::Base
    # date = format mm/dd/yyyy
    # ordernumber = your order number
    # reason = URL encoded text description of void reason
    # voidChildren = optional flag to indicate if child transactions should be voided.
    # [0:no, 1:immediate children should be voided, 2:all child generations should be voided]
    def void(**args)
      @request_url = "#{base_url}&action=void&#{args.to_query}"

      perform_get_request
    end

    # date = format mm/dd/yyyy date of trans
    # ordernumber = order number
    # newamount = optional new order total
    # newcomment = optional new order comment
    # newpercentage = optional new commission percentage
    # newspecific = optional new specific amount
    # editChildren = optional flag to indicate if child transactions should be edited.
    # [0:no, 1:immediate children should be edited, 2:all child generations should be edited]
    # currency = optional ISO 4217 Currency code for newamount
    def edit(**args)
      @request_url = "#{base_url}&action=edit&#{args.to_query}"

      perform_get_request
    end

    # sscid = click ID retrieved from landing page
    # sscidmode = 6
    # userId = affiliate ID to credit sale to (optional. can replace sscid and sscidmode)
    # amount = order total
    # tracking = order number
    # persale = optional override commission percentage
    # perlead = optional override commission amount
    def new_sale(**args)
      @request_url = "#{base_url}&action=new&transtype=sale&#{args.to_query}"

      perform_get_request
    end

    def new_lead(**args)
      @request_url = "#{base_url}&action=new&transtype=lead&#{args.to_query}"

      perform_get_request
    end
  end
end
