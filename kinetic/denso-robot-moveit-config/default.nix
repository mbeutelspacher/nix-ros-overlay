
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, moveit-simple-controller-manager, robot-state-publisher, moveit-ros-move-group, catkin, moveit-ros-visualization }:
buildRosPackage {
  pname = "ros-kinetic-denso-robot-moveit-config";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DENSORobot/denso_robot_ros-release/archive/release/kinetic/denso_robot_moveit_config/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e91f619a250f44f0dde175eba29b82da4156bcfcb2d181cd5c53059d35315054";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager moveit-ros-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the DENSO robots with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
