
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/diagnostic_msgs/1.12.7-0.tar.gz;
    sha256 = "649136f24515903a713e856fe413d5692073ce77b2970afefbb510af76964e70";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''This package holds the diagnostic messages which provide the
    standardized interface for the diagnostic and runtime monitoring
    systems in ROS. These messages are currently used by
    the <a href="http://wiki.ros.org/diagnostics">diagnostics</a>
    Stack, which provides libraries for simple ways to set and access
    the messages, as well as automated ways to process the diagnostic
    data.

    These messages are used for long term logging and will not be
    changed unless there is a very important reason.'';
    #license = lib.licenses.BSD;
  };
}
