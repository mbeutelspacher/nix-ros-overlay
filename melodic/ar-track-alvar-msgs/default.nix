
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-ar-track-alvar-msgs";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ar_track_alvar-release/archive/release/melodic/ar_track_alvar_msgs/0.7.1-0.tar.gz;
    sha256 = "0c39c3c9732ca3712a78f43bcc2545f90b846aff2559de8a5fc7a9b4a6efb27f";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    #license = lib.licenses.BSD;
  };
}
