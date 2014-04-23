module Killbill #:nodoc:
  module <%= class_name %> #:nodoc:
    class PaymentPlugin < ::Killbill::Plugin::ActiveMerchant::PaymentPlugin

      def initialize
        gateway_builder = Proc.new do |config|
          # Change this if needed
          ::ActiveMerchant::Billing::<%= class_name %>Gateway.new :login => config[:login]
        end

        super(gateway_builder,
              :<%= identifier %>,
              ::Killbill::<%= class_name %>::<%= class_name %>PaymentMethod,
              ::Killbill::<%= class_name %>::<%= class_name %>Transaction,
              ::Killbill::<%= class_name %>::<%= class_name %>Response)
      end

      def authorize_payment(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, context, properties)
      end

      def capture_payment(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, properties, context)
      end

      def void_payment(kb_account_id, kb_payment_id, kb_payment_method_id, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_id, kb_payment_method_id, properties, context)
      end

      def process_payment(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_id, kb_payment_method_id, amount, currency, properties, context)
      end

      def get_payment_info(kb_account_id, kb_payment_id, properties, context)
        super
      end

      def search_payments(search_key, offset, limit, properties, context)
        super
      end

      def process_refund(kb_account_id, kb_payment_id, refund_amount, currency, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_id, refund_amount, currency, properties, context)
      end

      def get_refund_info(kb_account_id, kb_payment_id, properties, context)
        super
      end

      def search_refunds(search_key, offset, limit, properties, context)
        super
      end

      def add_payment_method(kb_account_id, kb_payment_method_id, payment_method_props, set_default, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_method_id, payment_method_props, set_default, properties, context)
      end

      def delete_payment_method(kb_account_id, kb_payment_method_id, properties, context)
        # Pass extra parameters for the gateway here
        options = {}

        properties = merge_properties(properties, options)
        super(kb_account_id, kb_payment_method_id, properties, context)
      end

      def get_payment_method_detail(kb_account_id, kb_payment_method_id, properties, context)
        super
      end

      def set_default_payment_method(kb_account_id, kb_payment_method_id, properties, context)
        # TODO
      end

      def get_payment_methods(kb_account_id, refresh_from_gateway, properties, context)
        super
      end

      def search_payment_methods(search_key, offset, limit, properties, context)
        super
      end

      def reset_payment_methods(kb_account_id, payment_methods, properties)
        super
      end

      def build_form_descriptor(kb_account_id, descriptor_fields, properties, context)
        super
      end

      def process_notification(notification, properties, context)
        super
      end
    end
  end
end
