
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, sensor-msgs, geometry-msgs, pythonPackages, roslib, catkin, rqt-gui-py, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rqt-drone-teleop";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/kinetic/rqt_drone_teleop/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "ab6fb9502cd02df0777feecf745153c2949622dc1ec7c4efe2cb8ea392ad3743";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui sensor-msgs geometry-msgs pythonPackages.rospkg roslib rqt-gui-py rospy ];
  propagatedBuildInputs = [ rqt-gui sensor-msgs geometry-msgs pythonPackages.rospkg roslib rqt-gui-py rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy'';
    license = with lib.licenses; [ mit ];
  };
}
