
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, realtime-tools, joint-limits-interface, combined-robot-hw-tests, catkin, controller-interface, controller-manager-msgs, combined-robot-hw, controller-manager-tests, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-ros-control";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/ros_control/0.15.1-0.tar.gz;
    sha256 = "58bf82c63707b76b7d6752df3afd2b4fe369fc95260431e56a8cb7068a57f76a";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface realtime-tools joint-limits-interface combined-robot-hw-tests controller-interface controller-manager-msgs combined-robot-hw controller-manager-tests transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of packages that include controller interfaces, controller managers, transmissions and hardware_interfaces.'';
    #license = lib.licenses.BSD;
  };
}
