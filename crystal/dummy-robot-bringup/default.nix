
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2run, dummy-sensors, robot-state-publisher, launch, launch-ros, ament-lint-common, ament-cmake, dummy-map-server, ament-cmake-gtest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dummy-robot-bringup";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/dummy_robot_bringup/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "30e4072ba6f57663d61f629456bc07c74bd3a9678e9d94d85e7917f09781b468";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ros2run launch robot-state-publisher dummy-sensors launch-ros dummy-map-server ament-index-python ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy robot bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
