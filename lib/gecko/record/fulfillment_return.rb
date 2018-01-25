require 'gecko/record/base'
require 'gecko/record/fulfillment_return_line_item'

module Gecko
  module Record
    class FulfillmentReturn < Base
      belongs_to :order, writeable_on: :create
      belongs_to :location, class_name: 'Address'
      belongs_to :company,  class_name: 'Company'

      has_many :fulfillment_return_line_items
      #has_many :notes

      attribute :delivery_type,      String
      attribute :exchange_rate,      String
      attribute :received_at,        Date
      attribute :tracking_company,   String
      attribute :tracking_number,    String
      attribute :tracking_url,       String
      attribute :status,             String
      attribute :credit_note_number, String
      attribute :order_number,       String
    end

    class FulfillmentReturnAdapter < BaseAdapter
    end
  end
end
