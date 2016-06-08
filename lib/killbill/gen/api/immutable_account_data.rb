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
    module Model

      java_package 'org.killbill.billing.account.api'
      class ImmutableAccountData

        include org.killbill.billing.account.api.ImmutableAccountData

        attr_accessor :id, :external_key, :currency, :time_zone, :fixed_offset_time_zone, :reference_time

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for external_key [type = java.lang.String]
          @external_key = @external_key.to_s unless @external_key.nil?

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of( @currency.to_s ) unless @currency.nil?

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          if !@time_zone.nil?
            @time_zone = Java::org.joda.time.DateTimeZone.forID((@time_zone.respond_to?(:identifier) ? @time_zone.identifier : @time_zone.to_s))
          end

          # conversion for fixed_offset_time_zone [type = org.joda.time.DateTimeZone]
          if !@fixed_offset_time_zone.nil?
            @fixed_offset_time_zone = Java::org.joda.time.DateTimeZone.forID((@fixed_offset_time_zone.respond_to?(:identifier) ? @fixed_offset_time_zone.identifier : @fixed_offset_time_zone.to_s))
          end

          # conversion for reference_time [type = org.joda.time.DateTime]
          if !@reference_time.nil?
            @reference_time =  (@reference_time.kind_of? Time) ? DateTime.parse(@reference_time.to_s) : @reference_time
            @reference_time = Java::org.joda.time.DateTime.new(@reference_time.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for external_key [type = java.lang.String]
          @external_key = j_obj.external_key

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for time_zone [type = org.joda.time.DateTimeZone]
          @time_zone = j_obj.time_zone
          if !@time_zone.nil?
            @time_zone = TZInfo::Timezone.get(@time_zone.get_id)
          end

          # conversion for fixed_offset_time_zone [type = org.joda.time.DateTimeZone]
          @fixed_offset_time_zone = j_obj.fixed_offset_time_zone
          if !@fixed_offset_time_zone.nil?
            @fixed_offset_time_zone = TZInfo::Timezone.get(@fixed_offset_time_zone.get_id)
          end

          # conversion for reference_time [type = org.joda.time.DateTime]
          @reference_time = j_obj.reference_time
          if !@reference_time.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@reference_time)
            @reference_time = DateTime.iso8601(str)
          end
          self
        end

      end
    end
  end
end
