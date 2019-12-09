
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ncurses, robotis-controller, thormang3-action-module, std-msgs, catkin, robotis-device, thormang3-manager, libyamlcpp, roscpp, dynamixel-sdk }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-action-editor";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_action_editor/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "fb8e40bccc40b1911fa8a442974d3960ed52f3b8d7758f75376da3cc8a1e8a28";
  };

  buildType = "catkin";
  buildInputs = [ ncurses robotis-controller thormang3-action-module std-msgs robotis-device libyamlcpp roscpp dynamixel-sdk ];
  propagatedBuildInputs = [ ncurses robotis-controller thormang3-action-module std-msgs robotis-device thormang3-manager libyamlcpp roscpp dynamixel-sdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_action_editor package
    This package is a action editor for thormang3.
    The action file which is edited by this editor will be used with this action editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
