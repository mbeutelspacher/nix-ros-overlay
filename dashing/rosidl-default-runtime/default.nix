
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rosidl-typesupport-c, ament-lint-common, ament-cmake, rosidl-generator-py, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, rosidl-typesupport-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-default-runtime";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/dashing/rosidl_default_runtime/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "331d5ff404366315e1a7dc9cf4d1120c23cda40ba1f501c627628b8f0a6b853b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-cpp rosidl-typesupport-c rosidl-generator-py rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rosidl-typesupport-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the runtime for the ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
