
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, actionlib, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-twist-mux-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux_msgs-release/archive/release/kinetic/twist_mux_msgs/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "275201171d8058f8d488163fe05611cc2b1d44400ed1d152ccba227a688f3f70";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
