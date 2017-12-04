require 'gecko/record/base'

module Gecko
  module Record
    class Payment < Base
      belongs_to :invoice,          class_name: "Invoice"
      belongs_to :payment_method,   class_name: "PaymentMethod"
      attribute :amount,            BigDecimal
      attribute :reference,         String
      attribute :paid_at,           DateTime
      attribute :exchange_rate,     BigDecimal
    end

    class PaymentAdapter < BaseAdapter

    end
  end
end
