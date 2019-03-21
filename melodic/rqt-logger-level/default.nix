
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rosservice, rospy, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-melodic-rqt-logger-level";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_logger_level-release/archive/release/melodic/rqt_logger_level/0.4.8-0.tar.gz;
    sha256 = "c2fcc66a3b20e836aba40218bc745f0112986d329804f3929c275534d907a4b9";
  };

  propagatedBuildInputs = [ rqt-gui-py rospy pythonPackages.rospkg rqt-gui python-qt-binding rosservice rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.<br/>
   <br/>
  rqt_logger_level takes over `wx`-based tool [[rxloggerlevel]].'';
    #license = lib.licenses.BSD;
  };
}
