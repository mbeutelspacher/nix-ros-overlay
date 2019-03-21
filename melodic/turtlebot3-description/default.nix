
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-description";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_description/1.2.0-0.tar.gz;
    sha256 = "1a16e0a23bc531a33c583cc6c3a34fed5903a831334ce8bb71e778c912406969";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin urdf xacro ];

  meta = {
    description = ''3D models of the TurtleBot3 for simulation and visualization'';
    #license = lib.licenses.Apache 2.0;
  };
}
