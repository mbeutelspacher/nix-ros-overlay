
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visualization-msgs, rtt-geometry-msgs, rtt-roscomm, rtt-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-visualization-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_visualization_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "a8d52507f819487398142817687d0ec970a9a40d3d4ee2f352dfa32bffadc095";
  };

  buildType = "catkin";
  buildInputs = [ rtt-roscomm rtt-std-msgs visualization-msgs rtt-geometry-msgs ];
  propagatedBuildInputs = [ rtt-roscomm rtt-std-msgs visualization-msgs rtt-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS visualization_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/visualization_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
