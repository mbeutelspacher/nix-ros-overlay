
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-op3-online-walking-module-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-msgs-release/archive/release/kinetic/op3_online_walking_module_msgs/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "7db9ea5665c5dfbf7144b165bab5798345726f8346c369ade3a5386ead2d9ffe";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package includes ROS messages and services for the ROBOTIS OP3 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
