
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-toposens-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_msgs/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "d047de71633467c80521c982ead88f996aa29259c510278caf52fbcfc1080805";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  propagatedBuildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
