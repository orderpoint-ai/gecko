require 'gecko/record/base'

module Gecko
  module Record
    class PaymentMethod < Base
      has_many :payments,           class_name: "Payment"

      attribute :name,              String
      attribute :xero_code,         String
      attribute :quickbooks_code,   String
      attribute :is_default,        Boolean
    end

    class PaymentMethodAdapter < BaseAdapter

    end
  end
end
