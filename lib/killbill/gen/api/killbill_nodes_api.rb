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

      java_package 'org.killbill.billing.util.nodes'
      class KillbillNodesApi

        include org.killbill.billing.util.nodes.KillbillNodesApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.lang.Iterable getNodesInfo()'
        def get_nodes_info()
        res = @real_java_api.get_nodes_info()
        # conversion for res [type = java.lang.Iterable]
        tmp = []
        (res.nil? ? [] : res.iterator).each do |m|
          # conversion for m [type = org.killbill.billing.util.nodes.NodeInfo]
          m = Killbill::Plugin::Model::NodeInfo.new.to_ruby(m) unless m.nil?
          tmp << m
        end
        res = tmp
        return res
      end

      java_signature 'Java::org.killbill.billing.util.nodes.NodeInfo getCurrentNodeInfo()'
      def get_current_node_info()
      res = @real_java_api.get_current_node_info()
      # conversion for res [type = org.killbill.billing.util.nodes.NodeInfo]
      res = Killbill::Plugin::Model::NodeInfo.new.to_ruby(res) unless res.nil?
      return res
    end

    java_signature 'Java::void triggerNodeCommand(Java::org.killbill.billing.util.nodes.NodeCommand, Java::boolean)'
    def trigger_node_command(nodeCommand, localNodeOnly)

      # conversion for nodeCommand [type = org.killbill.billing.util.nodes.NodeCommand]
      nodeCommand = nodeCommand.to_java unless nodeCommand.nil?

      # conversion for localNodeOnly [type = boolean]
      localNodeOnly = localNodeOnly.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(localNodeOnly)
      @real_java_api.trigger_node_command(nodeCommand, localNodeOnly)
    end

    java_signature 'Java::void notifyPluginChanged(Java::org.killbill.billing.osgi.api.PluginInfo, Java::java.lang.Iterable)'
    def notify_plugin_changed(plugin, latestPlugins)

      # conversion for plugin [type = org.killbill.billing.osgi.api.PluginInfo]
      plugin = plugin.to_java unless plugin.nil?

      # conversion for latestPlugins [type = java.lang.Iterable]
      tmp = java.util.ArrayList.new
      (latestPlugins || []).each do |m|
        # conversion for m [type = org.killbill.billing.osgi.api.PluginInfo]
        m = m.to_java unless m.nil?
        tmp.add(m)
      end
      latestPlugins = tmp
      @real_java_api.notify_plugin_changed(plugin, latestPlugins)
    end
  end
end
end
end
