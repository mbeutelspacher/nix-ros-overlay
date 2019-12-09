
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-cmake, ament-cmake-pytest, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-adapter";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_adapter/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "adb7550016f0abcfc0e2d01c04373bab25884fbe441ec4ccc798c4ec92cb2ad3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.empy ];

  meta = {
    description = ''API and scripts to parse .msg/.srv/.action files and convert them to .idl.'';
    license = with lib.licenses; [ asl20 ];
  };
}
