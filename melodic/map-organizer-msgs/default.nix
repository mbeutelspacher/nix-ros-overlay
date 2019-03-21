
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-map-organizer-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/map_organizer_msgs/0.3.1-0.tar.gz;
    sha256 = "af49ea381522b98ba810d373e597842afa5ed7d28e141b79468501f4844cc779";
  };

  propagatedBuildInputs = [ nav-msgs message-runtime ];
  nativeBuildInputs = [ nav-msgs message-generation catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    #license = lib.licenses.BSD;
  };
}
