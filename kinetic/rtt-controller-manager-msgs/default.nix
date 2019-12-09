
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager-msgs, rtt-roscomm, rtt-std-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rtt-controller-manager-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_control-release/archive/release/kinetic/rtt_controller_manager_msgs/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "36ecb84d9b805f9fb415ccb2e04be67b7f2056e46c40784ac989434051c38b7c";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager-msgs rtt-roscomm rtt-std-msgs ];
  propagatedBuildInputs = [ controller-manager-msgs rtt-roscomm rtt-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS controller_manager_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/controller_manager_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
