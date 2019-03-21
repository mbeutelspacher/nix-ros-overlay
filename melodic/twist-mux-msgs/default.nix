
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-melodic-twist-mux-msgs";
  version = "2.1.0-r6";

  src = fetchurl {
    url = https://github.com/ros-gbp/twist_mux_msgs-release/archive/release/melodic/twist_mux_msgs/2.1.0-6.tar.gz;
    sha256 = "521a28a3dcc722a2eac2208e66f7f511a2010c3fda6e0b81fe45548c3ead692a";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs actionlib ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    #license = lib.licenses.CC BY-NC-SA 4.0;
  };
}
