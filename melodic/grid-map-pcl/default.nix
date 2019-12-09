
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, grid-map-core, catkin }:
buildRosPackage {
  pname = "ros-melodic-grid-map-pcl";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_pcl/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "e1aa93cfb928982822724ae2f11a05178dbb848b54a96d2d6a696424b52b6b45";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros grid-map-core ];
  propagatedBuildInputs = [ pcl-ros grid-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
