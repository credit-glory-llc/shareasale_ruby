# frozen_string_literal: true

module ShareasaleRuby
  # Transaction requests
  class Transaction < ShareasaleRuby::Base
    # date = format mm/dd/yyyy
    # order_number = your order number
    # reason = URL encoded text description of void reason
    # void_children = optional flag to indicate if child transactions should be voided.
    # [0:no, 1:immediate children should be voided, 2:all child generations should be voided]
    def void(**args)
      @request_url = base_url +
                     '&action=void' \
                     "&date=#{args[:date]}" \
                     "&ordernumber=#{args[:order_number]}" \
                     "&reason=#{args[:reason]}" \
                     "&voidChildren=#{args[:void_children]}"

      get_request
    end

    # date = format mm/dd/yyyy date of trans
    # order_number = order number
    # new_amount = optional new order total
    # new_comment = optional new order comment
    # new_percentage = optional new commission percentage
    # new_specific = optional new specific amount
    # edit_children = optional flag to indicate if child transactions should be edited.
    # [0:no, 1:immediate children should be edited, 2:all child generations should be edited]
    # currency = optional ISO 4217 Currency code for newamount
    def edit(**args)
      @request_url = base_url +
                     '&action=edit' \
                     "&date=#{args[:date]}" \
                     "&ordernumber=#{args[:order_number]}" \
                     "&newamount=#{args[:new_amount]}" \
                     "&newcomment=#{args[:new_comment]}" \
                     "&newpercentage=#{args[:new_percentage]}" \
                     "&newspecific=#{args[:new_specific]}" \
                     "&editChildren=#{args[:edit_children]}" \
                     "&currency=#{args[:currency]}"

      get_request
    end

    # sscid = click ID retrieved from landing page
    # sscidmode = 6
    # user_id = affiliate ID to credit sale to (optional. can replace sscid and sscidmode)
    # amount = order total
    # tracking = order number
    # persale = optional override commission percentage
    # perlead = optional override commission amount
    def new_sale(**args)
      @request_url = base_url +
                     '&action=new' \
                     '&transtype=sale' \
                     "&sscid=#{args[:sscid]}" \
                     "&userId=#{args[:user_id]}" \
                     "&amount=#{args[:amount]}" \
                     "&tracking=#{args[:tracking]}" \
                     "&persale=#{args[:persale]}"

      get_request
    end

    def new_lead
      @request_url = base_url +
                     '&action=new' \
                     '&transtype=lead' \
                     "&sscid=#{args[:sscid]}" \
                     "&userId=#{args[:user_id]}" \
                     "&amount=#{args[:amount]}" \
                     "&tracking=#{args[:tracking]}" \
                     "&perlead=#{args[:perlead]}"

      get_request
    end
  end
end
