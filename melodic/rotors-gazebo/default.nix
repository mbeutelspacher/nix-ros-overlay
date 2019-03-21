
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, mav-msgs, sensor-msgs, joy, catkin, roscpp, gazebo-plugins, rotors-gazebo-plugins, xacro, gazebo-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo/2.2.3-0.tar.gz;
    sha256 = "98425c45ee4f84bc43c033c786ad18ea897efda6616cca43f24ad38b3cc5083b";
  };

  propagatedBuildInputs = [ geometry-msgs mav-msgs sensor-msgs joy roscpp gazebo-plugins rotors-gazebo-plugins xacro gazebo-msgs ];
  nativeBuildInputs = [ geometry-msgs mav-msgs sensor-msgs joy catkin roscpp gazebo-plugins rotors-gazebo-plugins xacro gazebo-msgs ];

  meta = {
    description = ''The rotors_gazebo package'';
    #license = lib.licenses.ASL 2.0;
  };
}
