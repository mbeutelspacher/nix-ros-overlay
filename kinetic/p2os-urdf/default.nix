
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, p2os-driver, sensor-msgs, geometry-msgs, urdf, std-msgs, tf, catkin, p2os-msgs, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-p2os-urdf";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_urdf/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "e65cc280d2cacb0e5cf78cd065d8c6db2a55c5e3defc0c257b1dc19933411834";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs urdf std-msgs tf kdl-parser ];
  propagatedBuildInputs = [ p2os-driver sensor-msgs geometry-msgs urdf std-msgs tf p2os-msgs kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
