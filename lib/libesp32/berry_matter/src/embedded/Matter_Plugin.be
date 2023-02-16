#
# Matter_Plugin.be - generic superclass for all Matter plugins, used to define specific behaviors (light, switch, media...)
#
# Copyright (C) 2023  Stephan Hadinger & Theo Arends
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Matter modules for extensibility
# template but not actually used

#@ solidify:Matter_Plugin,weak

class Matter_Plugin
  static var EMPTY_LIST = []
  static var EMPTY_MAP = {}
  var device                                # reference to the `device` global object
  var endpoints                             # list of supported endpoints
  var clusters                              # map from cluster to list of attributes

  #############################################################
  # Constructor
  def init(device)
    self.device = device
    self.endpoints = self.EMPTY_LIST
    self.clusters = self.EMPTY_LIST
  end

  #############################################################
  # Which endpoints does it handle (list of numbers)
  def get_endpoints()
    return self.endpoints
  end
  def get_cluster_map()
    return self.clusters
  end
  def get_cluster_list(ep)
    var ret = []
    for k: self.clusters.keys()
      ret.push(k)
    end
    return ret
  end
  def get_attribute_list(ep, cluster)
    return self.clusters.find(cluster, self.EMPTY_LIST)
  end

  #############################################################
  # Does it handle this endpoint and this cluster
  def has(cluster, endpoint)
    return self.clusters.contains(cluster) && self.endpoints.find(endpoint) != nil
  end

  #############################################################
  # read attribute
  def read_attribute(msg, ctx)
    return nil
  end

  #############################################################
  # read event
  # TODO
  def read_event(msg, endpoint, cluster, eventid)
    return nil
  end

  #############################################################
  # subscribe attribute
  # TODO
  def subscribe_attribute(msg, endpoint, cluster, attribute)
    return nil
  end

  #############################################################
  # subscribe event
  # TODO
  def subscribe_event(msg, endpoint, cluster, eventid)
    return nil
  end

  #############################################################
  # write attribute
  def write_attribute(msg, endpoint, cluster, attribute)
    return nil
  end

  #############################################################
  # invoke command
  def invoke_request(msg, val, ctx)
    return nil
  end

  #############################################################
  # timed request
  # TODO - should we even support this?
  def timed_request(msg, val, ctx)
    return nil
  end
end
matter.Plugin = Matter_Plugin
