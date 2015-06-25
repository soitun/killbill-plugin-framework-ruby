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

      java_package 'org.killbill.billing.catalog.api.rules'
      class CasePriceList

        include org.killbill.billing.catalog.api.rules.CasePriceList

        attr_accessor :product, :product_category, :billing_period, :price_list, :destination_price_list

        def initialize()
        end

        def to_java()
          # conversion for product [type = org.killbill.billing.catalog.api.Product]
          @product = @product.to_java unless @product.nil?

          # conversion for product_category [type = org.killbill.billing.catalog.api.ProductCategory]
          @product_category = Java::org.killbill.billing.catalog.api.ProductCategory.value_of( @product_category.to_s ) unless @product_category.nil?

          # conversion for billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @billing_period = Java::org.killbill.billing.catalog.api.BillingPeriod.value_of( @billing_period.to_s ) unless @billing_period.nil?

          # conversion for price_list [type = org.killbill.billing.catalog.api.PriceList]
          @price_list = @price_list.to_java unless @price_list.nil?

          # conversion for destination_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @destination_price_list = @destination_price_list.to_java unless @destination_price_list.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for product [type = org.killbill.billing.catalog.api.Product]
          @product = j_obj.product
          @product = Killbill::Plugin::Model::Product.new.to_ruby(@product) unless @product.nil?

          # conversion for product_category [type = org.killbill.billing.catalog.api.ProductCategory]
          @product_category = j_obj.product_category
          @product_category = @product_category.to_s.to_sym unless @product_category.nil?

          # conversion for billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @billing_period = j_obj.billing_period
          @billing_period = @billing_period.to_s.to_sym unless @billing_period.nil?

          # conversion for price_list [type = org.killbill.billing.catalog.api.PriceList]
          @price_list = j_obj.price_list
          @price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@price_list) unless @price_list.nil?

          # conversion for destination_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @destination_price_list = j_obj.destination_price_list
          @destination_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@destination_price_list) unless @destination_price_list.nil?
          self
        end

      end
    end
  end
end
