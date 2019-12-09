
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-actionlib-msgs, catkin, rtt-trajectory-msgs, rtt-geometry-msgs, rtt-roscomm, rtt-std-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-control-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_control-release/archive/release/kinetic/rtt_control_msgs/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "cd2f09bc9d79b8a1794833d1b3d57e22a0f65b35a04d3153fa06c79dbf32ec02";
  };

  buildType = "catkin";
  buildInputs = [ rtt-actionlib-msgs rtt-trajectory-msgs rtt-geometry-msgs rtt-roscomm rtt-std-msgs control-msgs ];
  propagatedBuildInputs = [ rtt-actionlib-msgs rtt-trajectory-msgs rtt-geometry-msgs rtt-roscomm rtt-std-msgs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS control_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/control_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
