
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cpp-common, catkin, rosservice, rostest, roslib, message-generation, std-msgs, message-runtime, roscpp-serialization, rospy, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dynamic-reconfigure";
  version = "1.6.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/melodic/dynamic_reconfigure/1.6.0-0.tar.gz;
    sha256 = "00811c7ff7a43ff5dc2d22ce9bb493e55728d403f49c359606e173b687872151";
  };

  propagatedBuildInputs = [ roslib message-runtime boost rospy std-msgs roscpp rosservice ];
  nativeBuildInputs = [ rostest message-generation boost cpp-common roscpp-serialization std-msgs catkin roscpp ];

  meta = {
    description = ''This unary stack contains the dynamic_reconfigure package which provides a means to change
    node parameters at any time without having to restart the node.'';
    #license = lib.licenses.BSD;
  };
}
