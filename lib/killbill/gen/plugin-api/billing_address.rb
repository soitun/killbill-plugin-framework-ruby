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

      java_package 'org.killbill.billing.payment.plugin.api'
      class BillingAddress

        include org.killbill.billing.payment.plugin.api.BillingAddress

        attr_accessor :city, :address1, :address2, :state, :zip, :country

        def initialize()
        end

        def to_java()
          # conversion for city [type = java.lang.String]
          @city = @city.to_s unless @city.nil?

          # conversion for address1 [type = java.lang.String]
          @address1 = @address1.to_s unless @address1.nil?

          # conversion for address2 [type = java.lang.String]
          @address2 = @address2.to_s unless @address2.nil?

          # conversion for state [type = java.lang.String]
          @state = @state.to_s unless @state.nil?

          # conversion for zip [type = java.lang.String]
          @zip = @zip.to_s unless @zip.nil?

          # conversion for country [type = java.lang.String]
          @country = @country.to_s unless @country.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for city [type = java.lang.String]
          @city = j_obj.city

          # conversion for address1 [type = java.lang.String]
          @address1 = j_obj.address1

          # conversion for address2 [type = java.lang.String]
          @address2 = j_obj.address2

          # conversion for state [type = java.lang.String]
          @state = j_obj.state

          # conversion for zip [type = java.lang.String]
          @zip = j_obj.zip

          # conversion for country [type = java.lang.String]
          @country = j_obj.country
          self
        end

      end
    end
  end
end
