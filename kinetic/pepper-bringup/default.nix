
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, naoqi-sensors-py, naoqi-driver-py, roslaunch, catkin, naoqi-driver, pepper-sensors-py, naoqi-pose, pepper-description, rostest, rgbd-launch }:
buildRosPackage {
  pname = "ros-kinetic-pepper-bringup";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_robot-release/archive/release/kinetic/pepper_bringup/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "978136b61e085188498f2449928d159a80aec59075ed6acaad4874610f7d52f7";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ naoqi-sensors-py naoqi-driver-py naoqi-driver pepper-sensors-py naoqi-pose pepper-description rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pepper_bringup package'';
    license = with lib.licenses; [ asl20 ];
  };
}
