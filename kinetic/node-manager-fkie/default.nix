
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph, xterm, screen, multimaster-msgs-fkie, rqt-gui, diagnostic-msgs, dynamic-reconfigure, rosmsg, roslib, master-discovery-fkie, master-sync-fkie, catkin, pythonPackages, rospy, roslaunch, python-qt-binding, default-cfg-fkie, rqt-reconfigure, rosservice }:
buildRosPackage {
  pname = "ros-kinetic-node-manager-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/node_manager_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "bfa6c0a6113f833c6b2d62a088666c584c678003e9494959e8d479dfddcd26ef";
  };

  buildType = "catkin";
  buildInputs = [ master-discovery-fkie diagnostic-msgs multimaster-msgs-fkie ];
  propagatedBuildInputs = [ rosgraph xterm pythonPackages.docutils pythonPackages.paramiko screen multimaster-msgs-fkie rqt-gui diagnostic-msgs dynamic-reconfigure rosmsg roslib master-discovery-fkie master-sync-fkie rospy roslaunch python-qt-binding default-cfg-fkie rqt-reconfigure rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical interface, written in PySide, to manage the running and 
     configured ROS nodes on different hosts. For discovering 
     the running ROS master master_discovery node will be used.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
