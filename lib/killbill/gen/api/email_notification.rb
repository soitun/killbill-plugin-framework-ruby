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
      class EmailNotification

        include org.killbill.billing.overdue.api.EmailNotification

        attr_accessor :subject, :template_name, :is_html

        def initialize()
        end

        def to_java()
          # conversion for subject [type = java.lang.String]
          @subject = @subject.to_s unless @subject.nil?

          # conversion for template_name [type = java.lang.String]
          @template_name = @template_name.to_s unless @template_name.nil?

          # conversion for is_html [type = java.lang.Boolean]
          @is_html = @is_html.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_html)
          self
        end

        def to_ruby(j_obj)
          # conversion for subject [type = java.lang.String]
          @subject = j_obj.subject

          # conversion for template_name [type = java.lang.String]
          @template_name = j_obj.template_name

          # conversion for is_html [type = java.lang.Boolean]
          @is_html = j_obj.is_html
          if @is_html.nil?
            @is_html = false
          else
            tmp_bool = (@is_html.java_kind_of? java.lang.Boolean) ? @is_html.boolean_value : @is_html
            @is_html = tmp_bool ? true : false
          end
          self
        end

      end
    end
  end
end
