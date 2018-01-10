require 'gecko/record/base'

module Gecko
  module Record
    class PriceList < Base
      attribute :name,              String
      attribute :status,            String, readonly: true
      attribute :code,              String
      attribute :is_cost,           Boolean
      attribute :currency_id,       Integer
      attribute :currency_symbol,   String
      attribute :currency_iso,      String
      attribute :is_default,        Boolean
    end

    class PriceListAdapter < BaseAdapter
    end
  end
end
