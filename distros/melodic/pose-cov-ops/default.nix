
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, geometry-msgs, gtest, mrpt2, ros-environment, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-pose-cov-ops";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/pose_cov_ops-release/archive/release/melodic/pose_cov_ops/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ac4c22782f5b83108c80988bd6077869e5c9f88a0aeaabb58dfc3b03e547f71e";
  };

  buildType = "cmake";
  buildInputs = [ ros-environment ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ geometry-msgs mrpt2 roscpp ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''C++ library for SE(2)/SE(3) pose composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
