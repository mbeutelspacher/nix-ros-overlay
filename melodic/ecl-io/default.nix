
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-io";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_io/0.61.6-0.tar.gz;
    sha256 = "8ed29cb5c059af11e82868c532fedfcefd85d2e4d8d16f97bee45fb5af9b6ee4";
  };

  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ecl-license catkin ecl-errors ecl-config ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for 
     low level input-output functions. These are gathered here and re-represented 
     with a cross platform set of functions.'';
    #license = lib.licenses.BSD;
  };
}
