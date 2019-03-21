
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-footstep-msgs, catkin, sensor-msgs, message-generation, pcl-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition-msgs";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition_msgs/1.2.9-0.tar.gz;
    sha256 = "2bf7fd2c7608709b0f5670d49e201d672b7ed85ccce7c0078c5dce53aa07ecfa";
  };

  propagatedBuildInputs = [ message-generation jsk-footstep-msgs pcl-msgs std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ message-generation jsk-footstep-msgs pcl-msgs std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''ROS messages for jsk_pcl_ros and jsk_perception.'';
    #license = lib.licenses.BSD;
  };
}
