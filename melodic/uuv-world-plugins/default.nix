
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-msgs, catkin, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b36f8971609bacb0040109f63d8df1d70c130a4056ed8d0f3084b6deaf8f5ad1";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-msgs gazebo-dev ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
