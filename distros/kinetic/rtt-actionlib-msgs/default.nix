
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, rtt-roscomm, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-actionlib-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_actionlib_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "8c1db9527ec70a0c16eaf65872cc86d7350d5959f5eecd9f8af35d7c8ff1e90d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-msgs rtt-roscomm rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS actionlib_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/actionlib_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}