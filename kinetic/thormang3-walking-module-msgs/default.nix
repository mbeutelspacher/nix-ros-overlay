
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-walking-module-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_walking_module_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "62a6785f3a50ee894b55b9f8bd094b13fe729467004e82662295da1f12251858";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of messages and services for using thormang3_walking_module.'';
    license = with lib.licenses; [ asl20 ];
  };
}
