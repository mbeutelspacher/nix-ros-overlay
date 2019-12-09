
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, xacro, turtlebot-bringup, robot-state-publisher, turtlebot-navigation, catkin, yocs-cmd-vel-mux, turtlebot-description, kobuki-gazebo-plugins, robot-pose-ekf, gazebo-ros, depthimage-to-laserscan }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_gazebo/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "197945ab613a6cff82f22e71e5b20504fb3bc6997457bdc0934a78f3810d28cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-aggregator xacro robot-pose-ekf robot-state-publisher depthimage-to-laserscan turtlebot-navigation yocs-cmd-vel-mux turtlebot-description kobuki-gazebo-plugins gazebo-ros turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo launchers and worlds for TurtleBot simulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
