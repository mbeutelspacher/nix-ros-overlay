
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-robot-activity-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/snt-robotics/robot_activity-release/archive/release/melodic/robot_activity_msgs/0.1.1-0.tar.gz;
    sha256 = "c7047f132a865f58489413a1bb4e9c08ffe2014f3d404b4874f399eefeb9872e";
  };

  propagatedBuildInputs = [ std-msgs message-generation message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation message-runtime ];

  meta = {
    description = ''This package contains messages used by robot_activity, such as node's state
    and error'';
    #license = lib.licenses.BSD;
  };
}
