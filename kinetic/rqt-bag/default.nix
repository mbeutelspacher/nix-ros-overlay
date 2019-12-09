
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rosnode, pythonPackages, roslib, catkin, rqt-gui-py, rosbag, rospy, rosgraph-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-bag";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/kinetic/rqt_bag/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "60f6538a57f27bf63457f6f93f77b136a661cb8d62cafbc75fcdbb0505dc53bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rosnode pythonPackages.rospkg roslib rqt-gui-py rosbag rospy rosgraph-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
