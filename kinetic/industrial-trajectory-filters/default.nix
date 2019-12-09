
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, moveit-core, trajectory-msgs, pluginlib, catkin, moveit-ros-planning }:
buildRosPackage {
  pname = "ros-kinetic-industrial-trajectory-filters";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_trajectory_filters/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "88abedfb278699d5b20ad2fcfdaa2dcfde2a89fc5ce65d6e14d82292dd7dc318";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core trajectory-msgs orocos-kdl pluginlib moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-core trajectory-msgs orocos-kdl pluginlib moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS Industrial libraries/plugins for filtering trajectories.
   </p>
   <p>
     This package is part of the ROS Industrial program and contains libraries
     and moveit plugins for filtering robot trajectories.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
