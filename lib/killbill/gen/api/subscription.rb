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
    module Model

      java_package 'com.ning.billing.subscription.api.user'
      class Subscription

        include com.ning.billing.subscription.api.user.Subscription

        attr_accessor :id, :blocking_state, :created_date, :updated_date, :bundle_id, :state, :source_type, :start_date, :end_date, :future_end_date, :current_plan, :last_active_plan, :current_price_list, :current_phase, :last_active_product_name, :last_active_price_list_name, :last_active_category_name, :last_active_billing_period, :charged_through_date, :paid_through_date, :category, :pending_transition, :previous_transition, :all_transitions

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for blocking_state [type = com.ning.billing.junction.api.BlockingState]
          @blocking_state = @blocking_state.to_java unless @blocking_state.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = java.util.UUID.fromString(@bundle_id.to_s) unless @bundle_id.nil?

          # conversion for state [type = com.ning.billing.subscription.api.user.SubscriptionState]
          @state = Java::com.ning.billing.subscription.api.user.SubscriptionState.value_of("#{@state.to_s}") unless @state.nil?

          # conversion for source_type [type = com.ning.billing.subscription.api.user.SubscriptionSourceType]
          @source_type = Java::com.ning.billing.subscription.api.user.SubscriptionSourceType.value_of("#{@source_type.to_s}") unless @source_type.nil?

          # conversion for start_date [type = org.joda.time.DateTime]
          if !@start_date.nil?
            @start_date =  (@start_date.kind_of? Time) ? DateTime.parse(@start_date.to_s) : @start_date
            @start_date = Java::org.joda.time.DateTime.new(@start_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for end_date [type = org.joda.time.DateTime]
          if !@end_date.nil?
            @end_date =  (@end_date.kind_of? Time) ? DateTime.parse(@end_date.to_s) : @end_date
            @end_date = Java::org.joda.time.DateTime.new(@end_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for future_end_date [type = org.joda.time.DateTime]
          if !@future_end_date.nil?
            @future_end_date =  (@future_end_date.kind_of? Time) ? DateTime.parse(@future_end_date.to_s) : @future_end_date
            @future_end_date = Java::org.joda.time.DateTime.new(@future_end_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for current_plan [type = com.ning.billing.catalog.api.Plan]
          @current_plan = @current_plan.to_java unless @current_plan.nil?

          # conversion for last_active_plan [type = com.ning.billing.catalog.api.Plan]
          @last_active_plan = @last_active_plan.to_java unless @last_active_plan.nil?

          # conversion for current_price_list [type = com.ning.billing.catalog.api.PriceList]
          @current_price_list = @current_price_list.to_java unless @current_price_list.nil?

          # conversion for current_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @current_phase = @current_phase.to_java unless @current_phase.nil?

          # conversion for last_active_product_name [type = java.lang.String]
          @last_active_product_name = @last_active_product_name.to_s unless @last_active_product_name.nil?

          # conversion for last_active_price_list_name [type = java.lang.String]
          @last_active_price_list_name = @last_active_price_list_name.to_s unless @last_active_price_list_name.nil?

          # conversion for last_active_category_name [type = java.lang.String]
          @last_active_category_name = @last_active_category_name.to_s unless @last_active_category_name.nil?

          # conversion for last_active_billing_period [type = java.lang.String]
          @last_active_billing_period = @last_active_billing_period.to_s unless @last_active_billing_period.nil?

          # conversion for charged_through_date [type = org.joda.time.DateTime]
          if !@charged_through_date.nil?
            @charged_through_date =  (@charged_through_date.kind_of? Time) ? DateTime.parse(@charged_through_date.to_s) : @charged_through_date
            @charged_through_date = Java::org.joda.time.DateTime.new(@charged_through_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for paid_through_date [type = org.joda.time.DateTime]
          if !@paid_through_date.nil?
            @paid_through_date =  (@paid_through_date.kind_of? Time) ? DateTime.parse(@paid_through_date.to_s) : @paid_through_date
            @paid_through_date = Java::org.joda.time.DateTime.new(@paid_through_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for category [type = com.ning.billing.catalog.api.ProductCategory]
          @category = Java::com.ning.billing.catalog.api.ProductCategory.value_of("#{@category.to_s}") unless @category.nil?

          # conversion for pending_transition [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
          @pending_transition = @pending_transition.to_java unless @pending_transition.nil?

          # conversion for previous_transition [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
          @previous_transition = @previous_transition.to_java unless @previous_transition.nil?

          # conversion for all_transitions [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@all_transitions || []).each do |m|
            # conversion for m [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @all_transitions = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for blocking_state [type = com.ning.billing.junction.api.BlockingState]
          @blocking_state = j_obj.blocking_state
          @blocking_state = Killbill::Plugin::Model::BlockingState.new.to_ruby(@blocking_state) unless @blocking_state.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for bundle_id [type = java.util.UUID]
          @bundle_id = j_obj.bundle_id
          @bundle_id = @bundle_id.nil? ? nil : @bundle_id.to_s

          # conversion for state [type = com.ning.billing.subscription.api.user.SubscriptionState]
          @state = j_obj.state
          @state = @state.to_s.to_sym unless @state.nil?

          # conversion for source_type [type = com.ning.billing.subscription.api.user.SubscriptionSourceType]
          @source_type = j_obj.source_type
          @source_type = @source_type.to_s.to_sym unless @source_type.nil?

          # conversion for start_date [type = org.joda.time.DateTime]
          @start_date = j_obj.start_date
          if !@start_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@start_date)
            @start_date = DateTime.iso8601(str)
          end

          # conversion for end_date [type = org.joda.time.DateTime]
          @end_date = j_obj.end_date
          if !@end_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@end_date)
            @end_date = DateTime.iso8601(str)
          end

          # conversion for future_end_date [type = org.joda.time.DateTime]
          @future_end_date = j_obj.future_end_date
          if !@future_end_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@future_end_date)
            @future_end_date = DateTime.iso8601(str)
          end

          # conversion for current_plan [type = com.ning.billing.catalog.api.Plan]
          @current_plan = j_obj.current_plan
          @current_plan = Killbill::Plugin::Model::Plan.new.to_ruby(@current_plan) unless @current_plan.nil?

          # conversion for last_active_plan [type = com.ning.billing.catalog.api.Plan]
          @last_active_plan = j_obj.last_active_plan
          @last_active_plan = Killbill::Plugin::Model::Plan.new.to_ruby(@last_active_plan) unless @last_active_plan.nil?

          # conversion for current_price_list [type = com.ning.billing.catalog.api.PriceList]
          @current_price_list = j_obj.current_price_list
          @current_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@current_price_list) unless @current_price_list.nil?

          # conversion for current_phase [type = com.ning.billing.catalog.api.PlanPhase]
          @current_phase = j_obj.current_phase
          @current_phase = Killbill::Plugin::Model::PlanPhase.new.to_ruby(@current_phase) unless @current_phase.nil?

          # conversion for last_active_product_name [type = java.lang.String]
          @last_active_product_name = j_obj.last_active_product_name

          # conversion for last_active_price_list_name [type = java.lang.String]
          @last_active_price_list_name = j_obj.last_active_price_list_name

          # conversion for last_active_category_name [type = java.lang.String]
          @last_active_category_name = j_obj.last_active_category_name

          # conversion for last_active_billing_period [type = java.lang.String]
          @last_active_billing_period = j_obj.last_active_billing_period

          # conversion for charged_through_date [type = org.joda.time.DateTime]
          @charged_through_date = j_obj.charged_through_date
          if !@charged_through_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@charged_through_date)
            @charged_through_date = DateTime.iso8601(str)
          end

          # conversion for paid_through_date [type = org.joda.time.DateTime]
          @paid_through_date = j_obj.paid_through_date
          if !@paid_through_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time
            str = fmt.print(@paid_through_date)
            @paid_through_date = DateTime.iso8601(str)
          end

          # conversion for category [type = com.ning.billing.catalog.api.ProductCategory]
          @category = j_obj.category
          @category = @category.to_s.to_sym unless @category.nil?

          # conversion for pending_transition [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
          @pending_transition = j_obj.pending_transition
          @pending_transition = Killbill::Plugin::Model::SubscriptionTransition.new.to_ruby(@pending_transition) unless @pending_transition.nil?

          # conversion for previous_transition [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
          @previous_transition = j_obj.previous_transition
          @previous_transition = Killbill::Plugin::Model::SubscriptionTransition.new.to_ruby(@previous_transition) unless @previous_transition.nil?

          # conversion for all_transitions [type = java.util.List]
          @all_transitions = j_obj.all_transitions
          tmp = []
          (@all_transitions || []).each do |m|
            # conversion for m [type = com.ning.billing.subscription.api.user.SubscriptionTransition]
            m = Killbill::Plugin::Model::SubscriptionTransition.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @all_transitions = tmp
          self
        end

      end
    end
  end
end
