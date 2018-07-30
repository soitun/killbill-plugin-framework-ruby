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

      java_package 'org.killbill.billing.overdue.api'
      class OverdueStatesAccount

        include org.killbill.billing.overdue.api.OverdueStatesAccount

        attr_accessor :initial_reevaluation_interval, :states

        def initialize()
        end

        def to_java()

        # conversion for states [type = org.killbill.billing.overdue.api.OverdueState[]]
        tmp = []
        (@states || []).each do |m|
          # conversion for m [type = org.killbill.billing.overdue.api.OverdueState]
          m = m.to_java unless m.nil?
          tmp << m
        end
        @states = tmp.to_java Java::org.killbill.billing.overdue.api.OverdueState
        self
      end

      def to_ruby(j_obj)

      # conversion for states [type = org.killbill.billing.overdue.api.OverdueState[]]
      @states = j_obj.states
      tmp = []
      (@states || []).each do |m|
        # conversion for m [type = org.killbill.billing.overdue.api.OverdueState]
        m = Killbill::Plugin::Model::OverdueState.new.to_ruby(m) unless m.nil?
        tmp << m
      end
      @states = tmp
      self
    end

  end
end
end
end
