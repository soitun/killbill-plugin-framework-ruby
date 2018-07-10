#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Api

      java_package 'org.killbill.billing.account.api'
      class AccountUserApi

        include org.killbill.billing.account.api.AccountUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::org.killbill.billing.account.api.Account createAccount(Java::org.killbill.billing.account.api.AccountData, Java::org.killbill.billing.util.callcontext.CallContext)'
        def create_account(data, context)

          # conversion for data [type = org.killbill.billing.account.api.AccountData]
          data = data.to_java unless data.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.create_account(data, context)
            # conversion for res [type = org.killbill.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void updateAccount(Java::org.killbill.billing.account.api.Account, Java::org.killbill.billing.util.callcontext.CallContext)'
        def update_account(account, context)

          # conversion for account [type = org.killbill.billing.account.api.Account]
          account = account.to_java unless account.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.update_account(account, context)
        end

        java_signature 'Java::org.killbill.billing.account.api.Account getAccountByKey(Java::java.lang.String, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_account_by_key(key, context)

          # conversion for key [type = java.lang.String]
          key = key.to_s unless key.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_account_by_key(key, context)
            # conversion for res [type = org.killbill.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.account.api.Account getAccountById(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_account_by_id(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_account_by_id(accountId, context)
            # conversion for res [type = org.killbill.billing.account.api.Account]
            res = Killbill::Plugin::Model::Account.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.util.entity.Pagination searchAccounts(Java::java.lang.String, Java::java.lang.Long, Java::java.lang.Long, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def search_accounts(searchKey, offset, limit, context)

          # conversion for searchKey [type = java.lang.String]
          searchKey = searchKey.to_s unless searchKey.nil?

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.search_accounts(searchKey, offset, limit, context)
          # conversion for res [type = org.killbill.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::org.killbill.billing.util.entity.Pagination getAccounts(Java::java.lang.Long, Java::java.lang.Long, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_accounts(offset, limit, context)

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_accounts(offset, limit, context)
          # conversion for res [type = org.killbill.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::java.util.UUID getIdFromKey(Java::java.lang.String, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_id_from_key(externalKey, context)

          # conversion for externalKey [type = java.lang.String]
          externalKey = externalKey.to_s unless externalKey.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_id_from_key(externalKey, context)
            # conversion for res [type = java.util.UUID]
            res = res.nil? ? nil : res.to_s
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getEmails(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_emails(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_emails(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = org.killbill.billing.account.api.AccountEmail]
            m = Killbill::Plugin::Model::AccountEmail.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::void addEmail(Java::java.util.UUID, Java::org.killbill.billing.account.api.AccountEmail, Java::org.killbill.billing.util.callcontext.CallContext)'
        def add_email(accountId, email, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for email [type = org.killbill.billing.account.api.AccountEmail]
          email = email.to_java unless email.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.add_email(accountId, email, context)
        end

        java_signature 'Java::void removeEmail(Java::java.util.UUID, Java::org.killbill.billing.account.api.AccountEmail, Java::org.killbill.billing.util.callcontext.CallContext)'
        def remove_email(accountId, email, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for email [type = org.killbill.billing.account.api.AccountEmail]
          email = email.to_java unless email.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.remove_email(accountId, email, context)
        end

        java_signature 'Java::java.util.List getChildrenAccounts(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_children_accounts(parentAccountId, context)

          # conversion for parentAccountId [type = java.util.UUID]
          parentAccountId = java.util.UUID.fromString(parentAccountId.to_s) unless parentAccountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_children_accounts(parentAccountId, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = org.killbill.billing.account.api.Account]
              m = Killbill::Plugin::Model::Account.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getAuditLogsWithHistoryForId(Java::java.util.UUID, Java::org.killbill.billing.util.api.AuditLevel, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_audit_logs_with_history_for_id(accountId, auditLevel, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for auditLevel [type = org.killbill.billing.util.api.AuditLevel]
          auditLevel = Java::org.killbill.billing.util.api.AuditLevel.value_of( auditLevel.to_s ) unless auditLevel.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_audit_logs_with_history_for_id(accountId, auditLevel, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = org.killbill.billing.util.audit.AuditLogWithHistory]
              m = Killbill::Plugin::Model::AuditLogWithHistory.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List getEmailAuditLogsWithHistoryForId(Java::java.util.UUID, Java::org.killbill.billing.util.api.AuditLevel, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_email_audit_logs_with_history_for_id(accountEmailId, auditLevel, context)

          # conversion for accountEmailId [type = java.util.UUID]
          accountEmailId = java.util.UUID.fromString(accountEmailId.to_s) unless accountEmailId.nil?

          # conversion for auditLevel [type = org.killbill.billing.util.api.AuditLevel]
          auditLevel = Java::org.killbill.billing.util.api.AuditLevel.value_of( auditLevel.to_s ) unless auditLevel.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_email_audit_logs_with_history_for_id(accountEmailId, auditLevel, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = org.killbill.billing.util.audit.AuditLogWithHistory]
              m = Killbill::Plugin::Model::AuditLogWithHistory.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          end
        end
      end
    end
  end
end
