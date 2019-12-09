
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-calibration-msgs";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration_msgs/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "f85ef3c769ab6d3c7dd2b91cd681c2364657302db08d2107b5d3eb1f29ac1bdf";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for storing calibration samples
     to be used in full robot calibration procedures. This package
     is still unstable. Expect the messages to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
