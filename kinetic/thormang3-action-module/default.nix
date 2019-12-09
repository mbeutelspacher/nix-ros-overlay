
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, thormang3-action-module-msgs, std-msgs, catkin, roslib, robotis-framework-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-action-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_action_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "fea0da1714cac9b6ac2536f1b3a8f1c1324889777800f172427697a9faaaaacf";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost thormang3-action-module-msgs std-msgs roslib robotis-framework-common roscpp ];
  propagatedBuildInputs = [ robotis-controller-msgs boost thormang3-action-module-msgs std-msgs roslib robotis-framework-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a motion module that can play the saved action.
    This module is based on position control.'';
    license = with lib.licenses; [ asl20 ];
  };
}
