
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-map-msgs";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/autoware-ai/messages-release/archive/release/melodic/autoware_map_msgs/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "657e98a615e03cabd4a43531f59636f763b69c1ed17e083bdcba0cb54f756967";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Includes messages to handle each class in Autoware Map Format'';
    license = with lib.licenses; [ asl20 ];
  };
}
