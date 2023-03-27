
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, lifecycle-msgs, osrf-testing-tools-cpp, rcl, rcutils, rmw, rosidl-runtime-c, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rcl-lifecycle";
  version = "5.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/rolling/rcl_lifecycle/5.9.0-1.tar.gz";
    name = "5.9.0-1.tar.gz";
    sha256 = "89a393b505bd2de2a45073dc6d771d4efafb057ab7f62c0e0a6debe62225e7aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ lifecycle-msgs rcl rcutils rmw rosidl-runtime-c tracetools ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}