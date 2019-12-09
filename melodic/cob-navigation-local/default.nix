
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, cob-navigation-config, catkin, rviz, move-base, roslaunch, dwa-local-planner }:
buildRosPackage {
  pname = "ros-melodic-cob-navigation-local";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_navigation_local/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "f1546309f37a1c9f9b5978f5d09bc7bb76b7a3c7c84fd6393741f3c4d5a1507d";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-navigation-config rviz dwa-local-planner move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds config and launch files for running the  <a href="http://ros.org/wiki/move_base">move_base</a> node on the <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> in an odometric frame.
    No static map is needed for the move_base node in this configuration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
