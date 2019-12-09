
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, cob-msgs, catkin, roslib, rqt-robot-dashboard, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-dashboard";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_dashboard/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "2a34b89fda4cc72d128bf661db6d259658942ae505f3a78d010cc9d44c9bcb25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui cob-msgs roslib rqt-robot-dashboard rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_dashboard is a modified version of [[pr2_dashboard]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
