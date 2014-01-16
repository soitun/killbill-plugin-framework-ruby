###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Api

      java_package 'com.ning.billing.payment.api'
      class PaymentApi

        include com.ning.billing.payment.api.PaymentApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::com.ning.billing.payment.api.Payment createPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_payment(account, invoiceId, amount, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if amount.nil?
            amount = java.math.BigDecimal::ZERO
          else
            amount = java.math.BigDecimal.new(amount.to_s)
          end

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_payment(account, invoiceId, amount, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment createExternalPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_external_payment(account, invoiceId, amount, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if amount.nil?
            amount = java.math.BigDecimal::ZERO
          else
            amount = java.math.BigDecimal.new(amount.to_s)
          end

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_external_payment(account, invoiceId, amount, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void notifyPendingPaymentOfStateChanged(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.CallContext)'
        def notify_pending_payment_of_state_changed(account, paymentId, isSuccess, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for isSuccess [type = boolean]
          isSuccess = isSuccess.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(isSuccess)

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.notify_pending_payment_of_state_changed(account, paymentId, isSuccess, context)
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment retryPayment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
        def retry_payment(account, paymentId, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.retry_payment(account, paymentId, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefund(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund(account, paymentId, refundAmount, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for refundAmount [type = java.math.BigDecimal]
          if refundAmount.nil?
            refundAmount = java.math.BigDecimal::ZERO
          else
            refundAmount = java.math.BigDecimal.new(refundAmount.to_s)
          end

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_refund(account, paymentId, refundAmount, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void notifyPendingRefundOfStateChanged(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.CallContext)'
        def notify_pending_refund_of_state_changed(account, paymentId, isSuccess, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for isSuccess [type = boolean]
          isSuccess = isSuccess.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(isSuccess)

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.notify_pending_refund_of_state_changed(account, paymentId, isSuccess, context)
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund getRefund(Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_refund(refundId, withPluginInfo, context)

          # conversion for refundId [type = java.util.UUID]
          refundId = java.util.UUID.fromString(refundId.to_s) unless refundId.nil?

          # conversion for withPluginInfo [type = boolean]
          withPluginInfo = withPluginInfo.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(withPluginInfo)

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_refund(refundId, withPluginInfo, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefundWithAdjustment(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.math.BigDecimal, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund_with_adjustment(account, paymentId, refundAmount, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for refundAmount [type = java.math.BigDecimal]
          if refundAmount.nil?
            refundAmount = java.math.BigDecimal::ZERO
          else
            refundAmount = java.math.BigDecimal.new(refundAmount.to_s)
          end

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_refund_with_adjustment(account, paymentId, refundAmount, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Refund createRefundWithItemsAdjustments(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::java.util.Set, Java::com.ning.billing.util.callcontext.CallContext)'
        def create_refund_with_items_adjustments(account, paymentId, invoiceItemIds, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for invoiceItemIds [type = java.util.Set]
          tmp = java.util.TreeSet.new
          (invoiceItemIds || []).each do |m|
            # conversion for m [type = java.util.UUID]
            m = java.util.UUID.fromString(m.to_s) unless m.nil?
            tmp.add(m)
          end
          invoiceItemIds = tmp

          # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_refund_with_items_adjustments(account, paymentId, invoiceItemIds, context)
            # conversion for res [type = com.ning.billing.payment.api.Refund]
            res = Killbill::Plugin::Model::Refund.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAccountRefunds(Java::com.ning.billing.account.api.Account, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_refunds(account, context)

          # conversion for account [type = com.ning.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_account_refunds(account, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Refund]
              m = Killbill::Plugin::Model::Refund.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getPaymentRefunds(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_payment_refunds(paymentId, context)

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_payment_refunds(paymentId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Refund]
              m = Killbill::Plugin::Model::Refund.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getInvoicePayments(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_invoice_payments(invoiceId, context)

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_invoice_payments(invoiceId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Payment]
              m = Killbill::Plugin::Model::Payment.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAccountPayments(Java::java.util.UUID, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_account_payments(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_account_payments(accountId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = com.ning.billing.payment.api.Payment]
              m = Killbill::Plugin::Model::Payment.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.payment.api.Payment getPayment(Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_payment(paymentId, withPluginInfo, context)

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for withPluginInfo [type = boolean]
          withPluginInfo = withPluginInfo.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(withPluginInfo)

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_payment(paymentId, withPluginInfo, context)
            # conversion for res [type = com.ning.billing.payment.api.Payment]
            res = Killbill::Plugin::Model::Payment.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::com.ning.billing.payment.api.PaymentApiException => e
            raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::com.ning.billing.util.entity.Pagination getPayments(Java::java.lang.Long, Java::java.lang.Long, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_payments(offset, limit, context)

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_payments(offset, limit, context)
          # conversion for res [type = com.ning.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.entity.Pagination searchPayments(Java::java.lang.String, Java::java.lang.Long, Java::java.lang.Long, Java::com.ning.billing.util.callcontext.TenantContext)'
        def search_payments(searchKey, offset, limit, context)

          # conversion for searchKey [type = java.lang.String]
          searchKey = searchKey.to_s unless searchKey.nil?

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.search_payments(searchKey, offset, limit, context)
          # conversion for res [type = com.ning.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.entity.Pagination getRefunds(Java::java.lang.Long, Java::java.lang.Long, Java::com.ning.billing.util.callcontext.TenantContext)'
        def get_refunds(offset, limit, context)

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_refunds(offset, limit, context)
          # conversion for res [type = com.ning.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::com.ning.billing.util.entity.Pagination searchRefunds(Java::java.lang.String, Java::java.lang.Long, Java::java.lang.Long, Java::com.ning.billing.util.callcontext.TenantContext)'
        def search_refunds(searchKey, offset, limit, context)

          # conversion for searchKey [type = java.lang.String]
          searchKey = searchKey.to_s unless searchKey.nil?

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.search_refunds(searchKey, offset, limit, context)
          # conversion for res [type = com.ning.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::java.util.Set getAvailablePlugins()'
        def get_available_plugins()
        res = @real_java_api.get_available_plugins()
        # conversion for res [type = java.util.Set]
        tmp = []
        (res || []).each do |m|
          # conversion for m [type = java.lang.String]
          tmp << m
        end
        res = tmp
        return res
      end

      java_signature 'Java::java.util.UUID addPaymentMethod(Java::java.lang.String, Java::com.ning.billing.account.api.Account, Java::boolean, Java::com.ning.billing.payment.api.PaymentMethodPlugin, Java::com.ning.billing.util.callcontext.CallContext)'
      def add_payment_method(pluginName, account, setDefault, paymentMethodInfo, context)

        # conversion for pluginName [type = java.lang.String]
        pluginName = pluginName.to_s unless pluginName.nil?

        # conversion for account [type = com.ning.billing.account.api.Account]
        account = account.to_java unless account.nil?

        # conversion for setDefault [type = boolean]
        setDefault = setDefault.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(setDefault)

        # conversion for paymentMethodInfo [type = com.ning.billing.payment.api.PaymentMethodPlugin]
        paymentMethodInfo = paymentMethodInfo.to_java unless paymentMethodInfo.nil?

        # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
        context = context.to_java unless context.nil?
        begin
          res = @real_java_api.add_payment_method(pluginName, account, setDefault, paymentMethodInfo, context)
          # conversion for res [type = java.util.UUID]
          res = res.nil? ? nil : res.to_s
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
        end
      end

      java_signature 'Java::java.util.List getPaymentMethods(Java::com.ning.billing.account.api.Account, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
      def get_payment_methods(account, withPluginInfo, context)

        # conversion for account [type = com.ning.billing.account.api.Account]
        account = account.to_java unless account.nil?

        # conversion for withPluginInfo [type = boolean]
        withPluginInfo = withPluginInfo.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(withPluginInfo)

        # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
        context = context.to_java unless context.nil?
        begin
          res = @real_java_api.get_payment_methods(account, withPluginInfo, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentMethod]
            m = Killbill::Plugin::Model::PaymentMethod.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
        end
      end

      java_signature 'Java::com.ning.billing.payment.api.PaymentMethod getPaymentMethodById(Java::java.util.UUID, Java::boolean, Java::boolean, Java::com.ning.billing.util.callcontext.TenantContext)'
      def get_payment_method_by_id(paymentMethodId, includedInactive, withPluginInfo, context)

        # conversion for paymentMethodId [type = java.util.UUID]
        paymentMethodId = java.util.UUID.fromString(paymentMethodId.to_s) unless paymentMethodId.nil?

        # conversion for includedInactive [type = boolean]
        includedInactive = includedInactive.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(includedInactive)

        # conversion for withPluginInfo [type = boolean]
        withPluginInfo = withPluginInfo.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(withPluginInfo)

        # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
        context = context.to_java unless context.nil?
        begin
          res = @real_java_api.get_payment_method_by_id(paymentMethodId, includedInactive, withPluginInfo, context)
          # conversion for res [type = com.ning.billing.payment.api.PaymentMethod]
          res = Killbill::Plugin::Model::PaymentMethod.new.to_ruby(res) unless res.nil?
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
        end
      end

      java_signature 'Java::com.ning.billing.util.entity.Pagination searchPaymentMethods(Java::java.lang.String, Java::java.lang.Long, Java::java.lang.Long, Java::com.ning.billing.util.callcontext.TenantContext)'
      def search_payment_methods(searchKey, offset, limit, context)

        # conversion for searchKey [type = java.lang.String]
        searchKey = searchKey.to_s unless searchKey.nil?

        # conversion for offset [type = java.lang.Long]
        offset = offset

        # conversion for limit [type = java.lang.Long]
        limit = limit

        # conversion for context [type = com.ning.billing.util.callcontext.TenantContext]
        context = context.to_java unless context.nil?
        res = @real_java_api.search_payment_methods(searchKey, offset, limit, context)
        # conversion for res [type = com.ning.billing.util.entity.Pagination]
        res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
        return res
      end

      java_signature 'Java::void deletedPaymentMethod(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::boolean, Java::com.ning.billing.util.callcontext.CallContext)'
      def deleted_payment_method(account, paymentMethodId, deleteDefaultPaymentMethodWithAutoPayOff, context)

        # conversion for account [type = com.ning.billing.account.api.Account]
        account = account.to_java unless account.nil?

        # conversion for paymentMethodId [type = java.util.UUID]
        paymentMethodId = java.util.UUID.fromString(paymentMethodId.to_s) unless paymentMethodId.nil?

        # conversion for deleteDefaultPaymentMethodWithAutoPayOff [type = boolean]
        deleteDefaultPaymentMethodWithAutoPayOff = deleteDefaultPaymentMethodWithAutoPayOff.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(deleteDefaultPaymentMethodWithAutoPayOff)

        # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
        context = context.to_java unless context.nil?
        @real_java_api.deleted_payment_method(account, paymentMethodId, deleteDefaultPaymentMethodWithAutoPayOff, context)
      end

      java_signature 'Java::void setDefaultPaymentMethod(Java::com.ning.billing.account.api.Account, Java::java.util.UUID, Java::com.ning.billing.util.callcontext.CallContext)'
      def set_default_payment_method(account, paymentMethodId, context)

        # conversion for account [type = com.ning.billing.account.api.Account]
        account = account.to_java unless account.nil?

        # conversion for paymentMethodId [type = java.util.UUID]
        paymentMethodId = java.util.UUID.fromString(paymentMethodId.to_s) unless paymentMethodId.nil?

        # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
        context = context.to_java unless context.nil?
        @real_java_api.set_default_payment_method(account, paymentMethodId, context)
      end

      java_signature 'Java::java.util.List refreshPaymentMethods(Java::java.lang.String, Java::com.ning.billing.account.api.Account, Java::com.ning.billing.util.callcontext.CallContext)'
      def refresh_payment_methods(pluginName, account, context)

        # conversion for pluginName [type = java.lang.String]
        pluginName = pluginName.to_s unless pluginName.nil?

        # conversion for account [type = com.ning.billing.account.api.Account]
        account = account.to_java unless account.nil?

        # conversion for context [type = com.ning.billing.util.callcontext.CallContext]
        context = context.to_java unless context.nil?
        begin
          res = @real_java_api.refresh_payment_methods(pluginName, account, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = com.ning.billing.payment.api.PaymentMethod]
            m = Killbill::Plugin::Model::PaymentMethod.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        rescue Java::com.ning.billing.payment.api.PaymentApiException => e
          raise Killbill::Plugin::Model::PaymentApiException.new.to_ruby(e)
        end
      end
    end
  end
end
end
