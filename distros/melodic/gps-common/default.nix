
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, message-generation, message-runtime, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gps-common";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_common/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "06528187c6d9c788cdae1cd1b7c92953d09e49337a1820f9898f7bb9e51e8935";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-filters message-runtime nav-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
