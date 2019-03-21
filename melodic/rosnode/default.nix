
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, rosgraph, rostopic }:
buildRosPackage {
  pname = "ros-melodic-rosnode";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosnode/1.14.3-0.tar.gz;
    sha256 = "9766e0e61bb3e82cab7763af6c0881d2c7cd95cd8a14bcb0538da50124be4d80";
  };

  propagatedBuildInputs = [ rosgraph rostopic ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''rosnode is a command-line tool for displaying debug information
    about ROS <a href="http://www.ros.org/wiki/Nodes">Nodes</a>,
    including publications, subscriptions and connections. It also
    contains an experimental library for retrieving node
    information. This library is intended for internal use only.'';
    #license = lib.licenses.BSD;
  };
}
