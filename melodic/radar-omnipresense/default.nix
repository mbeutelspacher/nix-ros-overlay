
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-radar-omnipresense";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/SCU-RSL-ROS/radar_omnipresense-release/archive/release/melodic/radar_omnipresense/0.3.0-0.tar.gz;
    sha256 = "f82a2ead3bd79d78a4b0e123824adb03e08ca62c227ed8359c866e7f7e6fc56d";
  };

  propagatedBuildInputs = [ message-generation message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ rostest message-generation rospy std-msgs catkin roscpp ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    #license = lib.licenses.ECL2.0;
  };
}
