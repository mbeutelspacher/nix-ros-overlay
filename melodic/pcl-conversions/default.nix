
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl, sensor-msgs, catkin, pcl-msgs, std-msgs, roscpp, eigen }:
buildRosPackage {
  pname = "ros-melodic-pcl-conversions";
  version = "1.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_conversions/1.6.2-0.tar.gz;
    sha256 = "14361d15d63002d2752dff7618967181b18d3bb43aaee0c42ac6eb563d1a921a";
  };

  checkInputs = [ eigen std-msgs pcl sensor-msgs roscpp pcl-msgs ];
  propagatedBuildInputs = [ eigen std-msgs pcl sensor-msgs roscpp pcl-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    #license = lib.licenses.BSD;
  };
}
